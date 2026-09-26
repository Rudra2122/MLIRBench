"""macOS / Apple Silicon hardware counters via the private kperf framework.

This is the same mechanism Instruments' CPU Counters uses underneath. It
programs the PMU through kperf.framework (kpc_* calls), resolves event names
through kperfdata.framework (kpep_* calls, backed by the per-CPU database in
/usr/share/kpep/*.plist), and reads *this thread's* counters. Combined with
IREE's synchronous `local-sync` device (see inproc.py), that measures exactly
the kernel executing on the calling thread.

Requirements: macOS on Apple Silicon, run as root (the kernel refuses
kpc_force_all_ctrs_set otherwise):   sudo -E "$(which python3)" -m mlirbench counters

Private APIs are undocumented and can change between macOS releases. Every call
is checked, and failures come back as {"status": "unavailable", "reason": ...}.
Nothing is ever estimated or filled in.

What Apple's PMU does NOT expose: L2 / SLC / DRAM miss events. So "measured
bytes" here means L1D refill traffic (misses x 64 B line), i.e. L1<->L2 traffic,
not DRAM traffic. On an M3 most shapes in this study are L2-resident, which
makes L1<->L2 the traffic that matters, but it is a different quantity from
Linux's LLC-miss estimate and the report labels it as such.
"""
from __future__ import annotations

import ctypes as C
import os
import platform
import plistlib
from glob import glob
from typing import Optional

KPERF = "/System/Library/PrivateFrameworks/kperf.framework/kperf"
KPERFDATA = "/System/Library/PrivateFrameworks/kperfdata.framework/kperfdata"
KPC_MAX_COUNTERS = 32

# Logical metric -> candidate Apple event names, first available wins.
# Names come from Apple's kpep database; they vary slightly by core generation,
# hence the alternatives. Override with MLIRBENCH_KPC_EVENTS="EV1,EV2,...".
EVENT_CANDIDATES = [
    ("cycles", ["FIXED_CYCLES"]),
    ("instructions", ["FIXED_INSTRUCTIONS"]),
    ("simd_alu", ["INST_SIMD_ALU"]),
    ("simd_ld", ["INST_SIMD_LD"]),
    ("simd_st", ["INST_SIMD_ST"]),
    ("l1d_miss_ld", ["L1D_CACHE_MISS_LD_NONSPEC", "L1D_CACHE_MISS_LD"]),
    ("l1d_miss_st", ["L1D_CACHE_MISS_ST_NONSPEC", "L1D_CACHE_MISS_ST"]),
    ("l1d_tlb_miss", ["L1D_TLB_MISS"]),
    ("branch_mispred", ["BRANCH_MISPRED_NONSPEC"]),
    ("ldst", ["INST_LDST"]),
]


# Apple's PMU restricts some events to particular counters, so asking for all
# events at once fails for some ("no free counter", err=28): on an M3 the SIMD
# events claimed the counters the L1D-miss events need. Collect in passes, with
# the constrained events first in each pass; cycles repeat as a sanity anchor.
EVENT_GROUPS = [
    ["cycles", "instructions", "l1d_miss_ld", "l1d_miss_st"],
    ["cycles", "simd_alu", "simd_ld", "simd_st"],
    ["cycles", "l1d_tlb_miss", "branch_mispred", "ldst"],
]


class KperfError(RuntimeError):
    pass


def _load():
    kp = C.CDLL(KPERF)
    kd = C.CDLL(KPERFDATA)
    u32, u64, sz, vp, cp = C.c_uint32, C.c_uint64, C.c_size_t, C.c_void_p, C.c_char_p
    sig = {
        (kp, "kpc_force_all_ctrs_set"): ([C.c_int], C.c_int),
        (kp, "kpc_force_all_ctrs_get"): ([C.POINTER(C.c_int)], C.c_int),
        (kp, "kpc_set_config"): ([u32, C.POINTER(u64)], C.c_int),
        (kp, "kpc_set_counting"): ([u32], C.c_int),
        (kp, "kpc_set_thread_counting"): ([u32], C.c_int),
        (kp, "kpc_get_thread_counters"): ([u32, u32, C.POINTER(u64)], C.c_int),
        (kd, "kpep_db_create"): ([cp, C.POINTER(vp)], C.c_int),
        (kd, "kpep_db_free"): ([vp], None),
        (kd, "kpep_db_event"): ([vp, cp, C.POINTER(vp)], C.c_int),
        (kd, "kpep_config_create"): ([vp, C.POINTER(vp)], C.c_int),
        (kd, "kpep_config_free"): ([vp], None),
        (kd, "kpep_config_force_counters"): ([vp], C.c_int),
        (kd, "kpep_config_add_event"): ([vp, C.POINTER(vp), u32, C.POINTER(u32)], C.c_int),
        (kd, "kpep_config_kpc_classes"): ([vp, C.POINTER(u32)], C.c_int),
        (kd, "kpep_config_kpc_count"): ([vp, C.POINTER(sz)], C.c_int),
        (kd, "kpep_config_kpc_map"): ([vp, C.POINTER(sz), sz], C.c_int),
        (kd, "kpep_config_kpc"): ([vp, C.POINTER(u64), sz], C.c_int),
    }
    for (lib, name), (args, res) in sig.items():
        f = getattr(lib, name)
        f.argtypes, f.restype = args, res
    return kp, kd


def availability() -> dict:
    if platform.system() != "Darwin":
        return {"available": False, "reason": "kperf backend is macOS-only"}
    if platform.machine() != "arm64":
        return {"available": False, "reason": "kperf backend supports Apple Silicon only"}
    # Since macOS 11 system frameworks live in the dyld shared cache, not as
    # files on disk, so os.path.exists() is always False. Try loading instead.
    try:
        _load()
    except OSError as e:
        return {"available": False, "reason": f"kperf frameworks could not be loaded: {e}"}
    if os.geteuid() != 0:
        return {"available": False, "reason": 'needs root: sudo -E "$(which python3)" -m mlirbench counters'}
    return {"available": True, "backend": "kperf"}


def list_events_from_plist() -> dict:
    """Event names from /usr/share/kpep/*.plist (readable without root)."""
    out = {}
    for p in sorted(glob("/usr/share/kpep/*.plist")):
        try:
            with open(p, "rb") as fh:
                d = plistlib.load(fh)
        except Exception as e:  # noqa: BLE001
            out[os.path.basename(p)] = f"unreadable: {e}"
            continue
        events = None
        stack = [d]
        while stack and events is None:  # find the first dict called "events"
            x = stack.pop()
            if isinstance(x, dict):
                if isinstance(x.get("events"), dict):
                    events = x["events"]
                stack.extend(v for v in x.values() if isinstance(v, (dict, list)))
            elif isinstance(x, list):
                stack.extend(v for v in x if isinstance(v, (dict, list)))
        out[os.path.basename(p)] = sorted(events) if events else "no 'events' table found"
    return out


class KperfSession:
    """Program the PMU once, then read this thread's counters cheaply."""

    def __init__(self, event_names: Optional[list[str]] = None,
                 logical: Optional[list[str]] = None):
        self.kp, self.kd = _load()
        self.db = C.c_void_p()
        self.cfg = C.c_void_p()
        self.skipped: list[str] = []
        self.names: list[str] = []      # logical names, in config order
        self.events: list[str] = []     # Apple event names, in config order
        if self.kp.kpc_force_all_ctrs_set(1) != 0:
            raise KperfError("kpc_force_all_ctrs_set failed (not root, or blocked by the OS)")
        if self.kd.kpep_db_create(None, C.byref(self.db)) != 0:
            raise KperfError("kpep_db_create failed: no PMU event database for this CPU")
        if self.kd.kpep_config_create(self.db, C.byref(self.cfg)) != 0:
            raise KperfError("kpep_config_create failed")
        if self.kd.kpep_config_force_counters(self.cfg) != 0:
            raise KperfError("kpep_config_force_counters failed")
        wanted = self._requested(event_names)
        if logical is not None:  # one pass of EVENT_GROUPS
            cand = dict(EVENT_CANDIDATES)
            wanted = [(n, cand[n]) for n in logical if n in cand]
        for logical, candidates in wanted:
            added = False
            for ev_name in candidates:
                ev = C.c_void_p()
                if self.kd.kpep_db_event(self.db, ev_name.encode(), C.byref(ev)) != 0:
                    continue  # not in this CPU's database
                err = C.c_uint32(0)
                if self.kd.kpep_config_add_event(self.cfg, C.byref(ev), 0, C.byref(err)) != 0:
                    self.skipped.append(f"{ev_name} (no free counter / conflict, err={err.value})")
                    break
                self.names.append(logical)
                self.events.append(ev_name)
                added = True
                break
            if not added and not any(s.startswith(tuple(candidates)) for s in self.skipped):
                self.skipped.append(f"{logical}: none of {candidates} in this CPU's database")
        if not self.names:
            raise KperfError("no requested events could be configured")
        classes = C.c_uint32(0)
        count = C.c_size_t(0)
        if self.kd.kpep_config_kpc_classes(self.cfg, C.byref(classes)) != 0:
            raise KperfError("kpep_config_kpc_classes failed")
        if self.kd.kpep_config_kpc_count(self.cfg, C.byref(count)) != 0:
            raise KperfError("kpep_config_kpc_count failed")
        self.map = (C.c_size_t * KPC_MAX_COUNTERS)()
        regs = (C.c_uint64 * KPC_MAX_COUNTERS)()
        if self.kd.kpep_config_kpc_map(self.cfg, self.map, C.sizeof(self.map)) != 0:
            raise KperfError("kpep_config_kpc_map failed")
        if self.kd.kpep_config_kpc(self.cfg, regs, C.sizeof(regs)) != 0:
            raise KperfError("kpep_config_kpc failed")
        self.classes = classes.value
        if self.kp.kpc_set_config(self.classes, regs) != 0:
            raise KperfError("kpc_set_config failed")
        if self.kp.kpc_set_counting(self.classes) != 0:
            raise KperfError("kpc_set_counting failed")
        if self.kp.kpc_set_thread_counting(self.classes) != 0:
            raise KperfError("kpc_set_thread_counting failed")
        self._buf = (C.c_uint64 * KPC_MAX_COUNTERS)()

    @staticmethod
    def _requested(event_names: Optional[list[str]]) -> list[tuple[str, list[str]]]:
        env = os.environ.get("MLIRBENCH_KPC_EVENTS")
        if event_names or env:
            names = event_names or [e.strip() for e in env.split(",") if e.strip()]
            return [(n, [n]) for n in names]
        return EVENT_CANDIDATES

    def read(self) -> dict:
        if self.kp.kpc_get_thread_counters(0, KPC_MAX_COUNTERS, self._buf) != 0:
            raise KperfError("kpc_get_thread_counters failed")
        return {n: float(self._buf[self.map[i]]) for i, n in enumerate(self.names)}

    def close(self) -> None:
        try:
            self.kp.kpc_set_thread_counting(0)
            self.kp.kpc_set_counting(0)
            self.kp.kpc_force_all_ctrs_set(0)
            self.kd.kpep_config_free(self.cfg)
            self.kd.kpep_db_free(self.db)
        except Exception:  # noqa: BLE001
            pass


def cache_line_bytes() -> int:
    """hw.cachelinesize from sysctl (128 on Apple Silicon); env override."""
    if os.environ.get("MLIRBENCH_L1_LINE"):
        return int(os.environ["MLIRBENCH_L1_LINE"])
    try:
        import subprocess
        return int(subprocess.run(["sysctl", "-n", "hw.cachelinesize"], capture_output=True,
                                  text=True).stdout.strip())
    except Exception:  # noqa: BLE001
        return 128


def derive(c: dict, shape) -> dict:
    d = {}
    if c.get("cycles") and c.get("instructions"):
        d["ipc"] = c["instructions"] / c["cycles"]
        d["flops_per_cycle"] = shape.flops / c["cycles"]
    misses = (c.get("l1d_miss_ld") or 0) + (c.get("l1d_miss_st") or 0)
    if "l1d_miss_ld" in c:
        line = cache_line_bytes()
        d["l1_refill_bytes_est"] = misses * line
        d["l1_refill_bytes_vs_compulsory"] = d["l1_refill_bytes_est"] / shape.compulsory_bytes
        d["l1_line_bytes_assumed"] = line
    if c.get("simd_alu"):
        # 128-bit NEON: one FMA = 4 lanes x 2 FLOP. INST_SIMD_ALU also counts
        # non-FMA SIMD ops, so this is an upper bound on FLOPs, not a count.
        d["simd_alu_per_analytic_fma_vec"] = c["simd_alu"] / (shape.flops / 8)
        d["flops_upper_bound_from_simd"] = c["simd_alu"] * 8
    if c.get("instructions") and c.get("simd_alu"):
        d["simd_share_of_instructions"] = c["simd_alu"] / c["instructions"]
    return d


def selftest() -> dict:
    """Sanity check before trusting numbers: counts must scale with work."""
    av = availability()
    if not av["available"]:
        return {"ok": False, **av}
    s = KperfSession()
    try:
        def work(n):
            x = 0
            for i in range(n):
                x += i
            return x
        work(10_000)
        a0 = s.read(); work(200_000); a1 = s.read()
        b0 = s.read(); work(400_000); b1 = s.read()
        r = {k: (b1[k] - b0[k]) / max(a1[k] - a0[k], 1) for k in s.names}
        ok = 1.6 < r.get("instructions", 0) < 2.4 and 1.4 < r.get("cycles", 0) < 2.8
        return {"ok": ok, "events": dict(zip(s.names, s.events)), "skipped": s.skipped,
                "scaling_2x_work": r,
                "note": "instructions and cycles should both be ~2.0 for 2x the work"}
    finally:
        s.close()
