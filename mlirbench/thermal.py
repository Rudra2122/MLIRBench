"""Thermal-throttle detection: re-measure the FMA peak between chunks of work.

Why: a fanless laptop (e.g. MacBook Air) heat-soaks over a long benchmark run
and lowers its clocks. Then a configuration measured late looks slower than
one measured early for thermal reasons, which silently corrupts the
autotuner's ranking and every before/after comparison.

How: the peak-FMA microbenchmark (the same binary peaks.py used to establish
the ceiling) is a ~0.5 s, purely clock-bound probe. On first use the guard
calibrates: 5 probes give a baseline (median) and the host's probe-to-probe
noise; the effective threshold is max(threshold, 1.5 x noise), so a noisy
host (e.g. a shared VM) does not raise false alarms. A probe counts as
throttled only if an immediate re-probe is also low. Before each chunk:

  mode "wait": if the probe is more than `threshold` below baseline, sleep and
               re-probe until it recovers (or max_wait expires), then proceed.
  mode "warn": record the drift but don't wait.
  mode "off":  no probes.

After each chunk it probes again; if the post-chunk probe is below threshold,
that chunk's rows are flagged `thermal_suspect: true`. Every probe is appended
to results/thermal.json, and the report summarizes it.
"""
from __future__ import annotations

import platform
import subprocess
import time
from typing import Optional

from .common import RESULTS, read_json, write_json

_GUARD: Optional["ThermalGuard"] = None


def _probe_config() -> dict:
    """Which FMA binary quick_peak() will run (depends on machine.json)."""
    m = read_json(RESULTS / "machine.json") or {}
    d = m.get("peak_detail", {})
    return {"vector_bytes": d.get("vector_bytes", 32), "accumulators": d.get("accumulators", 16)}


def default_mode() -> str:
    return "wait" if platform.system() == "Darwin" else "warn"


class ThermalGuard:
    def __init__(self, mode: str = "auto", threshold: float = 0.05, max_wait_s: float = 600,
                 poll_s: float = 30, log=print):
        self.mode = default_mode() if mode == "auto" else mode
        self.threshold, self.max_wait_s, self.poll_s, self.log = threshold, max_wait_s, poll_s, log
        self.path = RESULTS / "thermal.json"
        self.state = read_json(self.path, {"probes": []})
        # A baseline is only valid for the probe binary it was measured with.
        # If peaks.py has since picked a different SIMD width / accumulator
        # count, the old baseline is meaningless: drop it and recalibrate.
        if (self.state.get("probe_config") != _probe_config()
                or "calibration_sequence" not in self.state):  # pre-sustained-clock calibration
            self.state = {"probes": self.state.get("probes", []),
                          "note": "baseline reset: probe configuration changed"}
        self.baseline: Optional[float] = self.state.get("baseline_gflops")
        self.effective: float = self.state.get("effective_threshold", threshold)
        self.last_ratio: Optional[float] = None

    # -- probe -------------------------------------------------------------
    def probe(self) -> Optional[float]:
        from .peaks import quick_peak
        try:
            return quick_peak()
        except Exception as e:  # noqa: BLE001
            self.log(f"  [thermal] probe failed: {e}")
            return None

    def _os_thermal(self) -> Optional[str]:
        if platform.system() != "Darwin":
            return None
        try:
            out = subprocess.run(["pmset", "-g", "therm"], capture_output=True, text=True,
                                 timeout=10).stdout
            return " | ".join(l.strip() for l in out.splitlines() if l.strip())[:300]
        except Exception:  # noqa: BLE001
            return None

    def calibrate(self) -> None:
        """Baseline = the *sustained* clock, not the cold burst.

        A laptop (seen on an M3 Air) boosts for a few seconds, then settles about
        7% lower within seconds of load. Calibrating on the first cold probes
        made every chunk look throttled and made the guard wait 30 s per chunk to
        re-cool into a boost that vanishes as soon as work starts. So: probe back
        to back for ~12 s and take the settled tail as the baseline. A genuine
        heat-soak drop below the sustained clock is still caught.
        """
        seq = [v for v in (self.probe() for _ in range(24)) if v]
        if not seq:
            return
        tail = sorted(seq[-8:])
        self.baseline = tail[len(tail) // 2]
        self.state["burst_gflops"] = max(seq)  # recorded for reference only
        self.state["calibration_sequence"] = seq
        vals = tail
        noise = (vals[-1] - vals[0]) / self.baseline
        self.effective = max(self.threshold, 1.5 * noise)
        self.state.update(baseline_gflops=self.baseline, calibration_probes=vals,
                          probe_config=_probe_config(),
                          probe_noise=noise, effective_threshold=self.effective)
        write_json(self.path, self.state)
        self.log(f"  [thermal] sustained baseline {self.baseline:.1f} GF/s (cold burst {max(seq):.1f}), "
                 f"probe noise {100 * noise:.1f}%, flag threshold {100 * self.effective:.1f}%")

    def _low(self, peak: Optional[float]) -> bool:
        return bool(peak and self.baseline and peak < (1 - self.effective) * self.baseline)

    def _probe_confirmed(self) -> Optional[float]:
        """Probe; if it looks throttled, re-probe once and keep the better value."""
        p = self.probe()
        if self._low(p):
            q = self.probe()
            p = max(x for x in (p, q) if x) if (p or q) else None
        return p

    def _record(self, label: str, peak: Optional[float], waited: float, phase: str) -> dict:
        ratio = (peak / self.baseline) if (peak and self.baseline) else None
        self.last_ratio = ratio
        ev = {"t": time.strftime("%Y-%m-%dT%H:%M:%S"), "label": label, "phase": phase,
              "peak_gflops": peak, "baseline_gflops": self.baseline, "ratio": ratio,
              "waited_s": round(waited, 1), "os_thermal": self._os_thermal(),
              "throttled": self._low(peak)}
        self.state["probes"].append(ev)
        write_json(self.path, self.state)
        return ev

    # -- public API --------------------------------------------------------
    def before(self, label: str) -> Optional[dict]:
        if self.mode == "off":
            return None
        if self.baseline is None:
            self.calibrate()
        peak, waited = self._probe_confirmed(), 0.0
        if self.mode == "wait":
            while self._low(peak) and waited < self.max_wait_s:
                self.log(f"  [thermal] {label}: probe {peak:.1f} GF/s is "
                         f"{100 * (1 - peak / self.baseline):.1f}% below baseline "
                         f"{self.baseline:.1f}; cooling {self.poll_s:.0f}s")
                time.sleep(self.poll_s)
                waited += self.poll_s
                peak = self._probe_confirmed()
        ev = self._record(label, peak, waited, "before")
        if ev["throttled"]:
            self.log(f"  [thermal] {label}: still {100 * (1 - ev['ratio']):.1f}% below baseline "
                     f"after {waited:.0f}s; proceeding, rows will be flagged")
        return ev

    def after(self, label: str) -> Optional[dict]:
        if self.mode == "off":
            return None
        if self.baseline is None:
            self.calibrate()
        ev = self._record(label, self._probe_confirmed(), 0.0, "after")
        if ev["throttled"]:
            self.log(f"  [thermal] {label}: DRIFT {100 * (1 - ev['ratio']):.1f}% during chunk "
                     f"-> rows flagged thermal_suspect")
        return ev

    @staticmethod
    def tag(rows: list[dict], before: Optional[dict], after: Optional[dict]) -> None:
        info = {"before_ratio": before and before["ratio"], "after_ratio": after and after["ratio"],
                "thermal_suspect": bool((before and before["throttled"]) or (after and after["throttled"]))}
        for r in rows:
            r["thermal"] = info


def configure(mode: str = "auto", threshold: float = 0.05, max_wait_s: float = 600,
              poll_s: float = 30) -> ThermalGuard:
    global _GUARD
    _GUARD = ThermalGuard(mode, threshold, max_wait_s, poll_s)
    return _GUARD


def guard() -> ThermalGuard:
    global _GUARD
    if _GUARD is None:
        _GUARD = ThermalGuard()
    return _GUARD
