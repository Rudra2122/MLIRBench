"""Hardware performance counters via Linux `perf stat`.

Method (iteration differencing): run iree-benchmark-module for exactly n1 and
n2 invocations (Google Benchmark `--benchmark_min_time=<n>x`) under perf stat,
and take (count(n2) - count(n1)) / (n2 - n1). Process start-up, module
loading, input upload and compilation of nothing all cancel, leaving the
per-invocation cost of the kernel (+ the unavoidable per-call runtime cost).

Events are collected in small groups (one perf run per group) so they are
never multiplexed; perf's reported running-percentage is kept and checked.

Where the PMU is not exposed (most cloud VMs, containers, macOS) this module
reports *why* and returns no numbers. It never synthesizes counter values.
"""
from __future__ import annotations

import os
import re
import shutil
from glob import glob
from pathlib import Path
from typing import Optional

from .bench import DEFAULT_DEVICE, input_files
from .common import find_tool, run
from .kernels import Shape

CORE_GROUPS = [
    ["cycles", "instructions"],
    ["cache-references", "cache-misses"],
    ["L1-dcache-loads", "L1-dcache-load-misses"],
    ["LLC-loads", "LLC-load-misses"],
    ["branches", "branch-misses"],
]
# Retired FP/vector instruction events: these give *measured* FLOPs.
ARCH_GROUPS = {
    "intel": [["fp_arith_inst_retired.512b_packed_single", "fp_arith_inst_retired.256b_packed_single",
               "fp_arith_inst_retired.128b_packed_single", "fp_arith_inst_retired.scalar_single"],
              # core-side L2 events: available with GCE's "standard" PMU level
              ["l2_rqsts.references", "l2_rqsts.miss", "l2_lines_in.all"],
              # where the core stalls: waiting on L1 / L2 / L3 misses
              ["cycle_activity.stalls_total", "cycle_activity.stalls_l1d_miss",
               "cycle_activity.stalls_l2_miss", "cycle_activity.stalls_l3_miss"],
              ["mem_load_retired.l1_miss", "mem_load_retired.l2_miss", "mem_load_retired.l3_miss"],
              # 4K aliasing: loads falsely blocked by an earlier store whose
              # address matches in bits 0-11 (a power-of-two-stride pathology)
              ["ld_blocks_partial.address_alias"]],
    "amd": [["fp_ret_sse_avx_ops.all"]],
    "arm": [["ASE_SPEC", "VFP_SPEC"]],
}
# Intel counts an FMA as 2 in fp_arith_inst_retired; lanes per event:
INTEL_LANES = {"512b_packed_single": 16, "256b_packed_single": 8, "128b_packed_single": 4,
               "scalar_single": 1}


def perf_binary() -> Optional[str]:
    if os.environ.get("MLIRBENCH_PERF"):
        return os.environ["MLIRBENCH_PERF"]
    p = shutil.which("perf")
    if p and run([p, "--version"]).returncode == 0:
        return p
    cands = sorted(glob("/usr/lib/linux-tools/*/perf"))  # Ubuntu versioned binaries
    return cands[-1] if cands else None


def availability() -> dict:
    perf = perf_binary()
    if not perf:
        return {"available": False, "reason": "perf not found (Linux only; set MLIRBENCH_PERF)"}
    p = run([perf, "stat", "-x,", "-e", "cycles,instructions", "--", "true"])
    txt = p.stderr
    if "<not supported>" in txt or p.returncode != 0:
        dmesg = ""
        try:
            dmesg = "; ".join(l for l in run(["dmesg"]).stdout.splitlines() if "Performance Events" in l)[:200]
        except Exception:
            pass
        return {"available": False, "perf": perf,
                "reason": "hardware events not supported (no PMU exposed - typical of VMs). " + dmesg}
    paranoid = Path("/proc/sys/kernel/perf_event_paranoid")
    return {"available": True, "perf": perf,
            "perf_event_paranoid": paranoid.read_text().strip() if paranoid.exists() else None}


def _vendor() -> str:
    try:
        t = Path("/proc/cpuinfo").read_text()
    except Exception:
        return "unknown"
    if "GenuineIntel" in t:
        return "intel"
    if "AuthenticAMD" in t:
        return "amd"
    if "CPU implementer" in t:
        return "arm"
    return "unknown"


def parse_perf_csv(text: str) -> dict:
    """Parse `perf stat -x,` output into {event: (value|None, running_pct)}."""
    out = {}
    for line in text.splitlines():
        f = line.split(",")
        if len(f) < 3 or line.startswith("#"):
            continue
        val, event = f[0], f[2]
        if not event or not re.match(r"^[\w\-.:/]+$", event):
            continue
        pct = float(f[4]) if len(f) > 4 and f[4] else None
        if val.startswith("<"):
            out[event] = (None, pct)
        else:
            try:
                out[event] = (float(val), pct)
            except ValueError:
                pass
    return out


def _perf_run(perf: str, events: list[str], vmfb: Path, shape: Shape, iters: int,
              device: str) -> dict:
    a, b = input_files(shape)
    cmd = [perf, "stat", "-x,", "-e", ",".join(events), "--",
           find_tool("iree-benchmark-module"), f"--module={vmfb}", f"--device={device}",
           "--function=matmul", f"--input=@{a}", f"--input=@{b}",
           f"--benchmark_min_time={iters}x", "--benchmark_repetitions=1"]
    return parse_perf_csv(run(cmd, timeout=1800).stderr)


def event_supported(perf: str, event: str) -> bool:
    r = parse_perf_csv(run([perf, "stat", "-x,", "-e", event, "--", "true"]).stderr)
    return event in r and r[event][0] is not None


# Lean set for per-config use inside the autotuner: enough to explain *why*
# one tile beats another (IPC, L1/L2 misses, L2-miss stalls), 2 perf groups.
QUICK_GROUPS = [["cycles", "instructions", "L1-dcache-load-misses"],
                ["l2_rqsts.miss", "cycle_activity.stalls_l2_miss"]]
QUICK_KPERF = ["FIXED_CYCLES", "FIXED_INSTRUCTIONS", "L1D_CACHE_MISS_LD_NONSPEC"]


def collect_perf(vmfb: Path, shape: Shape, n1: int, n2: int,
                 device: str = DEFAULT_DEVICE, include_software: bool = True,
                 groups: Optional[list] = None) -> dict:
    av = availability()
    hw = bool(av.get("available"))
    if groups is not None:  # explicit (lean) event set: hardware events only
        groups = [list(g) for g in groups] if hw else []
    else:
        groups = (CORE_GROUPS + ARCH_GROUPS.get(_vendor(), [])) if hw else []
        if include_software and av.get("perf"):
            groups.append(["task-clock", "page-faults", "context-switches"])
    if not groups:
        return {"status": "unavailable", **av}
    perf = av["perf"]
    per_call, notes = {}, []
    for g in groups:
        g = [e for e in g if event_supported(perf, e)]
        if not g:
            continue
        c1 = _perf_run(perf, g, vmfb, shape, n1, device)
        c2 = _perf_run(perf, g, vmfb, shape, n2, device)
        for e in g:
            v1, p1 = c1.get(e, (None, None))
            v2, p2 = c2.get(e, (None, None))
            if v1 is None or v2 is None:
                continue
            if (p1 and p1 < 99.5) or (p2 and p2 < 99.5):
                notes.append(f"{e} multiplexed ({p1}%/{p2}%)")
            per_call[e] = (v2 - v1) / (n2 - n1)
    bad = implausible(per_call)
    if bad:
        notes.append("dropped implausible: " + ", ".join(f"{k}={per_call[k]:.3g}" for k in bad))
        per_call = {k: v for k, v in per_call.items() if k not in bad}
    res = {"backend": "perf", "status": "ok" if av.get("available") else "software-events-only",
           "reason": None if av.get("available") else av.get("reason"),
           "method": f"per-invocation = (count[{n2}x] - count[{n1}x]) / {n2 - n1}",
           "per_invocation": per_call, "notes": notes}
    res["derived"] = derive(per_call, shape)
    return res


def derive(c: dict, shape: Shape) -> dict:
    d = {}
    if c.get("cycles") and c.get("instructions"):
        d["ipc"] = c["instructions"] / c["cycles"]
        d["flops_per_cycle"] = shape.flops / c["cycles"]
    if c.get("L1-dcache-load-misses") is not None:
        # per-kFLOP and bytes need only the miss count; the rate also needs loads
        # (the autotuner's lean event set collects misses without loads)
        if c.get("L1-dcache-loads"):
            d["l1_miss_rate"] = c["L1-dcache-load-misses"] / c["L1-dcache-loads"]
        d["l1_to_l2_bytes"] = c["L1-dcache-load-misses"] * 64
        d["l1_miss_per_kflop"] = 1e3 * c["L1-dcache-load-misses"] / shape.flops
        if c.get("cycles") and c["L1-dcache-load-misses"]:
            # how expensive each L1 miss is, amortized: rises when misses are
            # served from further out (L3/DRAM) or overlap less
            d["cycles_per_l1_miss"] = c["cycles"] / c["L1-dcache-load-misses"]
    if c.get("l2_rqsts.miss") is not None:
        d["l2_miss_per_kflop"] = 1e3 * c["l2_rqsts.miss"] / shape.flops
        if c.get("l2_rqsts.references"):
            d["l2_miss_rate"] = c["l2_rqsts.miss"] / c["l2_rqsts.references"]
    if c.get("l2_lines_in.all") is not None:
        d["l2_fill_bytes"] = c["l2_lines_in.all"] * 64  # traffic into L2 from L3/DRAM
        d["l2_fill_bytes_vs_compulsory"] = d["l2_fill_bytes"] / shape.compulsory_bytes
    if c.get("ld_blocks_partial.address_alias") is not None:
        d["address_alias_per_kflop"] = 1e3 * c["ld_blocks_partial.address_alias"] / shape.flops
    if c.get("cycles"):
        for lvl in ("l1d", "l2", "l3"):
            k = f"cycle_activity.stalls_{lvl}_miss"
            if c.get(k) is not None:
                d[f"stall_frac_{lvl}_miss"] = c[k] / c["cycles"]
    if c.get("LLC-load-misses") is not None:
        d["dram_read_bytes_est"] = c["LLC-load-misses"] * 64
        d["dram_bytes_vs_compulsory"] = d["dram_read_bytes_est"] / shape.compulsory_bytes
    if c.get("cache-misses") is not None:
        d["cache_miss_bytes_est"] = c["cache-misses"] * 64
    intel = {k.split(".")[-1]: v for k, v in c.items() if k.startswith("fp_arith_inst_retired")}
    if intel:
        # each retired FMA increments the event by 2, so events x lanes = FLOPs
        d["measured_flops"] = sum(v * INTEL_LANES[k] for k, v in intel.items() if k in INTEL_LANES)
        d["measured_vs_analytic_flops"] = d["measured_flops"] / shape.flops
        tot = sum(intel.values()) or 1
        d["fp_instr_mix_pct"] = {k: 100 * v / tot for k, v in intel.items()}
    return d


# ---------------------------------------------------------------------------
# Backend dispatch: Linux perf, macOS kperf (root), macOS xctrace (template)
# ---------------------------------------------------------------------------

def implausible(per_call: dict) -> list[str]:
    """Events whose per-call value is physically impossible: negative, or more
    than 64 events per cycle (no counted event fires that often). These come
    from counter readings that went backwards between samples; the unsigned
    difference then wraps to ~1.8e19. Seen once on an M3 (kperf)."""
    cyc = per_call.get("cycles")
    bad = [k for k, v in per_call.items() if v < -0.5]
    if cyc and cyc > 0:
        bad += [k for k, v in per_call.items() if k != "cycles" and v > 64 * cyc]
    return bad


def backend_status() -> dict:
    """Availability of every backend on this host, for the report and CLI."""
    from . import counters_kperf, counters_xctrace
    return {"perf": availability(), "kperf": counters_kperf.availability(),
            "xctrace": counters_xctrace.availability()}


def choose_backend(requested: str = "auto") -> tuple[Optional[str], dict]:
    st = backend_status()
    if requested != "auto":
        return (requested if st[requested].get("available") else None), st
    for b in ("perf", "kperf", "xctrace"):  # kperf before xctrace: exact, in-process
        if st[b].get("available"):
            return b, st
    return None, st


def _iterations(vmfb: Path, shape: Shape, device: str) -> tuple[int, int, float]:
    from .inproc import Kernel, plan_iterations
    lat = Kernel(vmfb, shape, device).latency_ms()
    n1, n2 = plan_iterations(lat)
    return n1, n2, lat


def collect(vmfb: Path, shape: Shape, backend: str = "auto",
            device: str = DEFAULT_DEVICE) -> dict:
    name, st = choose_backend(backend)
    if name is None:
        # still run perf software events if perf exists (validates the method)
        if st["perf"].get("perf"):
            n1, n2, _ = _iterations(vmfb, shape, device)
            r = collect_perf(vmfb, shape, n1, n2, device)
            r["other_backends"] = {k: v.get("reason") for k, v in st.items() if k != "perf"}
            return r
        return {"status": "unavailable", "backend": None,
                "reasons": {k: v.get("reason") for k, v in st.items()}}
    n1, n2, lat = _iterations(vmfb, shape, device)
    if name == "perf":
        r = collect_perf(vmfb, shape, n1, n2, device)
    elif name == "kperf":
        from . import counters_kperf
        from .inproc import Kernel, differenced
        kern = Kernel(vmfb, shape, device)
        per, events, skipped = {}, {}, []
        invalid = []
        for group in counters_kperf.EVENT_GROUPS:  # one PMU programming per pass
            for attempt in range(3):  # retry a pass whose readings went backwards
                sess = counters_kperf.KperfSession(logical=group)
                try:
                    got = differenced(sess.read, kern, n1, n2)
                finally:
                    sess.close()
                bad = implausible(got)
                if not bad:
                    break
            if bad:  # still bad after retries: drop those events, never report them
                invalid += [f"{k}={got[k]:.3g}" for k in bad]
                got = {k: v for k, v in got.items() if k not in bad}
            for k, v in got.items():
                per.setdefault(k, v)  # cycles appear in every pass; keep the first
            events.update(dict(zip(sess.names, sess.events)))
            skipped += [x for x in sess.skipped if x not in skipped]
        r = {"backend": "kperf", "status": "ok", "events": events,
             "skipped_events": skipped, "invalid_events": invalid, "per_invocation": per,
             "derived": counters_kperf.derive(per, shape),
             "scope": "calling thread only (local-sync executes the kernel on it)"}
    else:
        from . import counters_xctrace
        x = counters_xctrace.collect(vmfb, shape, n1, n2, device)
        r = {"backend": "xctrace", "status": "ok", **x,
             "derived": _derive_generic(x["per_invocation"], shape),
             "scope": "whole iree-benchmark-module process"}
    r.update(method=f"per-invocation = (C[{n2}] - C[{n1}]) / {n2 - n1}",
             iterations=[n1, n2], latency_ms_estimate=lat)
    return r


def _derive_generic(c: dict, shape: Shape) -> dict:
    """Apple event names (xctrace) -> same derived metrics as the kperf path."""
    from .counters_kperf import EVENT_CANDIDATES, derive as kderive
    alias = {ev: logical for logical, evs in EVENT_CANDIDATES for ev in evs}
    return kderive({alias.get(k, k): v for k, v in c.items()}, shape)


def collect_quick(vmfb: Path, shape: Shape, backend: str = "auto",
                  device: str = DEFAULT_DEVICE) -> dict:
    """Lean per-config counters for the autotuner (a few seconds per config).

    Returns {"status": "unavailable", ...} when no hardware backend is usable;
    software events are not worth the time per config.
    """
    name, st = choose_backend(backend)
    if name not in ("perf", "kperf"):
        return {"status": "unavailable", "backend": name,
                "reason": "per-config counters need perf (Linux) or kperf (macOS, root)"}
    from .inproc import Kernel, differenced, plan_iterations
    lat = Kernel(vmfb, shape, device).latency_ms()
    n1, n2 = plan_iterations(lat, target_s=0.5)
    if name == "perf":
        r = collect_perf(vmfb, shape, n1, n2, device, groups=QUICK_GROUPS)
    else:
        from . import counters_kperf
        sess = counters_kperf.KperfSession(QUICK_KPERF)
        try:
            per = differenced(sess.read, Kernel(vmfb, shape, device), n1, n2)
        finally:
            sess.close()
        alias = {"FIXED_CYCLES": "cycles", "FIXED_INSTRUCTIONS": "instructions",
                 "L1D_CACHE_MISS_LD_NONSPEC": "L1-dcache-load-misses"}
        per = {alias.get(k, k): v for k, v in per.items()}
        r = {"backend": "kperf", "status": "ok", "per_invocation": per, "derived": derive(per, shape)}
    d = r.get("derived", {})
    keep = ("ipc", "flops_per_cycle", "l1_miss_per_kflop", "l2_miss_per_kflop",
            "stall_frac_l2_miss", "cycles_per_l1_miss")
    return {"status": r.get("status"), "backend": r.get("backend"),
            **{k: d[k] for k in keep if k in d}}
