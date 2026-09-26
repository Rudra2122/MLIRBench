"""Plots and results/REPORT.md, generated only from the JSON the experiments wrote."""
from __future__ import annotations

from pathlib import Path

from .common import RESULTS, fmt, read_json
from .compiler import LADDER, VARIANTS
from .kernels import parse_shape
from . import roofline as _rl

PLOTS = RESULTS / "plots"
COLORS = {"v1_generic_isa": "#9e9e9e", "vec_heuristic": "#1f77b4", "vec_autotuned": "#d62728",
          "packed_late": "#2ca02c", "packed_mmt4d": "#98df8a", "packed_mmt4d_ukernel": "#17becf",
          "scalar_naive": "#ff7f0e", "scalar_tiled": "#ffbb78"}


def _plt():
    PLOTS.mkdir(parents=True, exist_ok=True)
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    return plt


def plot_roofline(machine: dict, sweep: dict) -> Path:
    import numpy as np
    plt = _plt()
    fig, ax = plt.subplots(figsize=(9, 6))
    peak = machine["peak_gflops"]
    oi = np.logspace(-1.5, 3, 300)
    styles = {"L1": ":", "L2": "-.", "L3": "--", "DRAM": "-"}
    for lvl, bw in machine["bandwidth_gbs"].items():
        if isinstance(bw, (int, float)):
            ax.plot(oi, np.minimum(peak, oi * bw), styles.get(lvl, "-"), color="k", lw=1,
                    label=f"{lvl} roof ({bw:.0f} GB/s)")
    ax.axhline(peak, color="k", lw=2)
    ax.text(oi[-1], peak * 1.08, f"FP32 FMA peak {peak:.0f} GFLOP/s (1 core)", ha="right", fontsize=9)
    for v in ("v1_generic_isa", "vec_heuristic", "packed_late", "vec_autotuned"):
        pts = [r for r in sweep["rows"] if r["variant"] == v and r.get("status") == "ok"]
        if not pts:
            continue
        xs = [r["roofline"]["oi_flops_per_byte"] for r in pts]
        ys = [r["timing"]["gflops"] for r in pts]
        ax.scatter(xs, ys, s=40, color=COLORS[v], label=VARIANTS[v].title, zorder=3,
                   edgecolor="k", linewidth=0.4)
        if v == "packed_late":
            for r, x, y in zip(pts, xs, ys):
                if r["label"] not in ("square", "decode GEMV, batch 1", "decode, batch 32"):
                    continue  # rectangular 128-token shapes share OI ~50; labelled in the table
                ax.annotate(r["shape"], (x, y), fontsize=7, xytext=(4, -9), textcoords="offset points")
    ax.set_xscale("log"); ax.set_yscale("log")
    ax.set_xlabel("Operational intensity (FLOP / compulsory byte)")
    ax.set_ylabel("Achieved GFLOP/s")
    ax.set_title("MLIRBench 2.0 - hierarchical roofline, IREE llvm-cpu, fp32 matmul")
    ax.set_ylim(0.5, peak * 2.5)
    ax.grid(True, which="both", alpha=0.25)
    ax.legend(fontsize=8, loc="upper left")
    PLOTS.mkdir(parents=True, exist_ok=True)
    p = PLOTS / "roofline.png"
    fig.tight_layout(); fig.savefig(p, dpi=150); plt.close(fig)
    return p


def plot_ablation(abl: dict) -> Path:
    plt = _plt()
    shapes = list(dict.fromkeys(r["shape"] for r in abl["rows"]))
    fig, axes = plt.subplots(1, len(shapes), figsize=(4 * len(shapes), 4.6), sharey=False)
    if len(shapes) == 1:
        axes = [axes]
    for ax, s in zip(axes, shapes):
        rows = {r["variant"]: r for r in abl["rows"] if r["shape"] == s and r.get("status") == "ok"}
        names = [v for v in LADDER if v in rows]
        vals = [rows[v]["timing"]["gflops"] for v in names]
        ax.barh(range(len(names)), vals, color=[COLORS[v] for v in names])
        ax.set_yticks(range(len(names)))
        ax.set_yticklabels([VARIANTS[v].title if s == shapes[0] else "" for v in names], fontsize=7)
        ax.invert_yaxis(); ax.set_xscale("log")
        ax.set_title(s, fontsize=9); ax.set_xlabel("GFLOP/s (log)")
        for i, val in enumerate(vals):
            ax.text(val, i, f" {val:.1f}", va="center", fontsize=7)
    fig.suptitle("Optimization ladder (same kernel, one change per rung)")
    fig.tight_layout()
    p = PLOTS / "ablation.png"
    fig.savefig(p, dpi=150); plt.close(fig)
    return p


def plot_autotune(t: dict) -> Path:
    plt = _plt()
    rows = [r for r in t["rows"] if r["status"] == "ok"]
    base = min(r["vec_stack_access"] for r in rows)
    fig, ax = plt.subplots(figsize=(7, 4.5))
    acc = [r["vm"] * r["vn"] / t["lanes"] for r in rows]
    sc = ax.scatter(acc, [r["gflops"] for r in rows],
                    c=[r["vec_stack_access"] - base for r in rows], cmap="viridis", s=28)
    fig.colorbar(sc, label="extra vector stack accesses (spill proxy)")
    b = t["best"]; h = t["heuristic_row"]
    ax.scatter([b["vm"] * b["vn"] / t["lanes"]], [b["gflops"]], marker="*", s=250, c="r", label=f"best {b['config']}")
    ax.scatter([h["vm"] * h["vn"] / t["lanes"]], [h["gflops"]], marker="X", s=120, c="k", label=f"IREE heuristic {h['config']}")
    ax.set_xscale("log", base=2)
    ax.set_xlabel("accumulator vector registers in register tile (vm*vn/lanes)")
    ax.set_ylabel("GFLOP/s"); ax.legend(fontsize=8)
    ax.set_title(f"Autotune search {t['shape']['name']} ({t['evaluated']} configs)")
    ax.grid(alpha=0.3)
    fig.tight_layout()
    p = PLOTS / f"autotune_{t['shape']['name']}.png"
    fig.savefig(p, dpi=150); plt.close(fig)
    return p


def _num(v) -> str:
    if v is None:
        return "n/a"
    return fmt(v, 0) if abs(v) >= 100 else fmt(v, 3)


def _table(header: list[str], rows: list[list]) -> str:
    out = ["| " + " | ".join(header) + " |", "|" + "---|" * len(header)]
    out += ["| " + " | ".join(str(c) for c in r) + " |" for r in rows]
    return "\n".join(out)


def _refresh(rows: list[dict], machine: dict, floor) -> None:
    """Recompute roofline fields from stored timings so the model can evolve
    without re-running benchmarks."""
    for r in rows:
        if r.get("status") == "ok":
            r["roofline"] = _rl.analyze(parse_shape(r["shape"]), r["timing"]["gflops"], machine,
                                        r["timing"]["median_ms"], floor)


def _thermal_section(th: dict, abl, sweep, tunes) -> list[str]:
    probes = th["probes"]
    md = ["## Thermal guard", ""]
    if "probe_config" not in th:
        # Logs written before the baseline was tied to the probe binary: the
        # baseline may come from a narrower-SIMD probe, so ratios are invalid.
        md += ["**This thermal log predates probe-configuration tracking and is not valid as a "
               "throttle detector**: its baseline may have been calibrated with a different probe "
               "binary than later probes used. Treat these results as unguarded and use `cv_pct` "
               "for stability.", ""]
        vals = sorted(p["peak_gflops"] for p in probes if p.get("peak_gflops"))
        hi = [v for v in vals if v > 0.75 * vals[-1]] if vals else []
        if len(hi) > 5:
            med = hi[len(hi) // 2]
            md += [f"Post-hoc check: the {len(hi)} probes run with the final probe binary span "
                   f"{hi[0]:.0f}-{hi[-1]:.0f} GFLOP/s (median {med:.0f}); "
                   f"{sum(v < 0.95 * med for v in hi)} fell more than 5% below that median.", ""]
        return md
    bad = [p for p in probes if p.get("throttled")]
    if "calibration_sequence" not in th and len(bad) >= 3:
        # Older logs calibrated on the cold burst clock. If the flags are a tight,
        # constant step at the end of chunks while "before" probes recover, that is
        # the burst -> sustained clock drop of a laptop, not progressive heat soak.
        import statistics as _st
        after = [p["ratio"] for p in bad if p["phase"] == "after" and p.get("ratio")]
        before = [p["ratio"] for p in probes if p["phase"] == "before" and p.get("ratio")]
        if len(after) >= 3 and _st.pstdev(after) < 0.01 and before and _st.median(before) > 0.97:
            md += [f"**{len(bad)} probes flagged, but the pattern is the burst -> sustained clock step, "
                   f"not heat soak:** every flagged chunk ended at {100 * _st.median(after):.1f}% of the "
                   f"cold-burst baseline (spread {100 * _st.pstdev(after):.2f} pp), while probes after "
                   f"cool-down recovered to a median {100 * _st.median(before):.1f}%. This log predates "
                   "sustained-clock calibration (the guard now calibrates on the settled clock), so these "
                   "rows are measured at the sustained clock, consistent with each other, and do not need "
                   "re-running.", ""]
            return md
    md += [f"Baseline probe {fmt(th.get('baseline_gflops'), 1)} GFLOP/s, probe noise "
           f"{fmt(100 * (th.get('probe_noise') or 0), 1)}%, flag threshold "
           f"{fmt(100 * (th.get('effective_threshold') or 0), 1)}%. "
           f"{len(probes)} probes, {len(bad)} below threshold, "
           f"{sum(p.get('waited_s', 0) for p in probes):.0f} s spent cooling.", ""]
    suspect = [f"{r['shape']}/{r['variant']}" for d in (abl, sweep) if d for r in d["rows"]
               if r.get("thermal", {}).get("thermal_suspect")]
    suspect += [f"autotune {t['shape']['name']}" for t in tunes if t.get("thermal", {}).get("suspect")]
    md += [("Results measured while throttled (re-run these): " + ", ".join(suspect)) if suspect
           else "No result was measured while throttled.", ""]
    if bad:
        md += [_table(["time", "chunk", "phase", "probe GF/s", "% of baseline", "waited s"],
                      [[p["t"], p["label"], p["phase"], fmt(p["peak_gflops"], 1),
                        fmt(100 * p["ratio"], 1) if p.get("ratio") else "n/a", p["waited_s"]] for p in bad]), ""]
    return md


def build_report() -> Path:
    machine = read_json(RESULTS / "machine.json")
    sweep = read_json(RESULTS / "sweep.json")
    abl = read_json(RESULTS / "ablation.json")
    cnt = read_json(RESULTS / "counters.json")
    rv = read_json(RESULTS / "riscv.json")
    for d in (sweep, abl):
        if d and machine:
            _refresh(d["rows"], machine, d.get("invocation_floor_ms"))
    tunes = [read_json(p) for p in sorted((RESULTS / "autotune").glob("*.json"))] if (RESULTS / "autotune").exists() else []
    md = ["# MLIRBench 2.0 - generated results", "",
          "Every number below is read from the JSON in `results/`; nothing is hand-entered. "
          "Timings are single-core (`--device=local-sync`), median across repetitions of "
          "`iree-benchmark-module`.", ""]
    if machine:
        h = machine["host"]
        md += ["## Machine ceilings", "",
               f"Host: {h.get('cpu_model', h.get('machine'))} ({'VM' if h.get('hypervisor') else 'bare metal' if h.get('system') == 'Darwin' else 'bare metal?'}), "
               f"{h.get('iree_compile_version', '').splitlines()[1].strip() if h.get('iree_compile_version') else ''}", "",
               _table(["Ceiling", "Value", "Ridge point (FLOP/B)"],
                      [["FP32 FMA peak", f"{machine['peak_gflops']:.1f} GFLOP/s "
                        f"({machine['peak_detail']['vector_bytes'] * 8}-bit, {machine['peak_detail']['accumulators']} acc)", "-"]] +
                      [[f"{k} read bandwidth", f"{v:.1f} GB/s", f"{machine['ridge_points'][k]:.2f}"]
                       for k, v in machine["bandwidth_gbs"].items() if isinstance(v, (int, float))]), ""]
        md += ["Cache sizes: " + ", ".join(f"{k} {v // 1024} KiB" for k, v in machine["caches_bytes"].items()), ""]
    if abl:
        p = plot_ablation(abl)
        md += ["## Optimization ladder", "", f"![ablation](plots/{p.name})", ""]
        md += [f"Invocation floor (1x1x1 matmul, fixed per-call cost): {fmt(abl.get('invocation_floor_ms'), 4)} ms", ""]
        for s in dict.fromkeys(r["shape"] for r in abl["rows"]):
            rows = [r for r in abl["rows"] if r["shape"] == s]
            v1 = next((r for r in rows if r["variant"] == "v1_generic_isa" and r.get("status") == "ok"), None)
            tbl = []
            for r in rows:
                if r.get("status") != "ok":
                    tbl.append([VARIANTS[r["variant"]].title, r.get("status"), "", "", "", "", "", ""])
                    continue
                t, rf, a = r["timing"], r["roofline"], r["asm"]
                widths = sorted({int(k.split("_")[-1]) for k in a if k.startswith("fma_packed_") and a[k]}, reverse=True)
                tbl.append([VARIANTS[r["variant"]].title, r["tile"], f"{t['median_ms']:.4f}", f"{t['p95_ms']:.4f}",
                            f"{t['gflops']:.1f}", f"{rf['pct_of_roof']:.1f}%",
                            (f"{widths[0]}-bit" if widths else "scalar") + f" ({a.get('fma_vector_total', 0)})",
                            f"{v1['timing']['median_ms'] / t['median_ms']:.2f}x" if v1 else "-"])
            md += [f"### {s}", "", _table(["Variant", "Tiles", "median ms", "p95 ms", "GFLOP/s", "% governing roof",
                                            "packed FMA width (static count)", "vs v1 build"], tbl), ""]
    sched = read_json(RESULTS / "schedule.json")
    if sched and sched.get("results"):
        md += ["## Hand-written transform-dialect schedule", "",
               "`schedules/matmul.mlir.in` replaces IREE's codegen pipeline for the matmul. Each stage adds one "
               "transformation; `*` = minimum over 3 interleaved confirmation rounds. See "
               "`docs/TRANSFORM_SCHEDULE.md`.", ""]
        res = [x for x in sched["results"] if x.get("rows")]
        stages = list(dict.fromkeys(r["stage"] for x in res for r in x["rows"]))
        tbl = []
        for st in stages:
            line = [st]
            for x in res:
                r = next((r for r in x["rows"] if r["stage"] == st), None)
                if not r or r.get("status") != "ok":
                    line.append(r.get("status", "-") if r else "-")
                    continue
                v = r.get("confirm_min_ms")
                line.append(f"{v:.4f}*" if v else f"{r['timing']['median_ms']:.4f}")
            tbl.append(line)
        md += [_table(["Stage (ms)"] + [f"{x['shape']['name']} ({x['tile']})" for x in res], tbl), ""]
        md += [_table(["Shape", "best TK", "full schedule vs IREE same tiles", "K-blocked vs IREE same tiles",
                       "best mine vs best IREE"],
                      [[x["shape"]["name"], x.get("best_tk", "-"),
                        *[f"{100 * x[k]:.1f}%" if k in x else "-" for k in
                          ("full_schedule_vs_iree", "kblock_vs_iree", "best_mine_vs_best_iree")]] for x in res]), ""]
    pad = read_json(RESULTS / "padding.json")
    if pad and pad.get("rows"):
        md += ["## Padded-width experiment (capacity vs power-of-two conflicts)", "",
               f"Fixed tiles across shapes: IREE `{pad['iree_tile']}`, schedule `{pad['sched_tile']}`, "
               f"K blocking TK={pad['tk']}. Counter backend: {pad.get('backend') or 'none (timings only)'}. "
               "See `docs/COUNTER_FINDINGS.md` section 12.", ""]
        keys = [("l2_miss_per_kflop", "L2 miss/kFLOP"), ("l1_miss_per_kflop", "L1 miss/kFLOP"),
                ("stall_frac_l2_miss", "L2-stall frac"), ("address_alias_per_kflop", "4K-alias/kFLOP")]
        have = [kv for kv in keys if any(kv[0] in ((r.get("counters") or {}).get("derived") or {})
                                         for r in pad["rows"])]
        tbl = []
        for r in pad["rows"]:
            if r.get("status") != "ok":
                tbl.append([r["shape"], r["kernel"], r.get("status")] + [""] * (1 + len(have)))
                continue
            d = (r.get("counters") or {}).get("derived") or {}
            tbl.append([r["shape"], r["kernel"], f"{r['timing']['median_ms']:.3f}", f"{r['timing']['gflops']:.1f}"]
                       + [fmt(d.get(k), 3) for k, _ in have])
        md += [_table(["Shape (MxKxN)", "Kernel", "ms", "GFLOP/s"] + [h for _, h in have], tbl), ""]
        md += ["Verdict (mechanical):", ""] + [f"- {l}" for l in pad["verdict"]["lines"]] + [""]
    if tunes:
        md += ["## Autotuner", ""]
        tbl = []
        for t in tunes:
            p = plot_autotune(t)
            c = t["confirm"]
            tbl.append([t["shape"]["name"], t["heuristic_row"]["config"], t["best"]["config"], t["evaluated"],
                        sum(t["rejected"].values()), f"{c['heuristic']['median_ms']:.4f}", f"{c['best']['median_ms']:.4f}",
                        f"{t['speedup_vs_heuristic']:.2f}x"])
            md += [f"![autotune {t['shape']['name']}](plots/{p.name})", ""]
        md += [_table(["Shape", "IREE heuristic", "Autotuned", "Configs", "Rejected", "heuristic ms",
                       "tuned ms", "Speedup"], tbl),
               "", "Speedups are from a separate confirmation run (11 repetitions, 0.2 s each) "
               "of the winner and the heuristic, not from the search itself.", ""]
    if sweep:
        p = plot_roofline(machine, sweep)
        md += ["## Roofline sweep", "", f"![roofline](plots/{p.name})", ""]
        tbl = []
        for r in sweep["rows"]:
            if r.get("status") != "ok":
                continue
            rf = r["roofline"]
            tbl.append([r["shape"], r["label"], VARIANTS[r["variant"]].title, f"{r['timing']['median_ms']:.4f}",
                        f"{r['timing']['gflops']:.1f}", f"{rf['oi_flops_per_byte']:.1f}", rf["governing_level"],
                        f"{rf['roof_gflops']:.0f}", f"{rf['pct_of_roof']:.1f}%", f"{rf.get('floor_share_pct', 0):.0f}%",
                        rf["verdict"]])
        md += [_table(["Shape", "Kind", "Variant", "median ms", "GFLOP/s", "OI", "Data lives in", "Roof GF/s",
                       "% roof", "floor share", "Diagnosis"], tbl), ""]
    if cnt:
        md += ["## Hardware counters", ""]
        avail = cnt.get("availability") or {}
        if isinstance(avail.get("perf"), dict):  # new format: one entry per backend
            md += [f"Backend used: **{cnt.get('backend') or 'none'}**", ""]
            md += [f"- {b}: {'available' if v.get('available') else 'unavailable - ' + str(v.get('reason'))}"
                   for b, v in avail.items()]
            md += [""]
        else:
            md += [f"Availability: {'available' if avail.get('available') else 'NOT available'} "
                   f"- {avail.get('reason') or ''}", ""]
        rows = [r for r in cnt["rows"] if r["counters"].get("per_invocation")]
        if rows:
            keys = sorted({k for r in rows for k in r["counters"]["per_invocation"]})
            dkeys = sorted({k for r in rows for k, v in r["counters"].get("derived", {}).items()
                            if isinstance(v, (int, float))})
            md += ["Per-invocation counts (iteration-differenced):", "",
                   _table(["Shape", "Variant", "backend", *keys],
                          [[r["shape"], r["variant"], r["counters"].get("backend"),
                            *[_num(r["counters"]["per_invocation"].get(k)) for k in keys]] for r in rows]), ""]
            if dkeys:
                md += ["Derived:", "",
                       _table(["Shape", "Variant", *dkeys],
                              [[r["shape"], r["variant"],
                                *[fmt(r["counters"].get("derived", {}).get(k), 3) for k in dkeys]] for r in rows]), ""]
            if any(r["counters"].get("backend") == "kperf" for r in rows):
                md += ["Apple Silicon exposes no L2/SLC/DRAM miss events: `l1_refill_bytes_est` is L1D refill "
                       "traffic (misses x cache line), i.e. L1<->L2 traffic, not DRAM traffic. "
                       "`flops_upper_bound_from_simd` treats every SIMD ALU op as a 4-lane FMA.", ""]
            if any(r["counters"].get("backend") == "xctrace" for r in rows):
                modes = {r["counters"].get("parse", {}).get("mode") for r in rows}
                md += [f"xctrace samples interpreted as: {', '.join(m for m in modes if m)}. "
                       "Raw XML in `results/xctrace_debug/`.", ""]
    th = read_json(RESULTS / "thermal.json")
    if th and th.get("probes"):
        md += _thermal_section(th, abl, sweep, tunes)
    if rv:
        md += ["## RISC-V (RVV) - cross-compiled and executed under QEMU", ""]
        tbl = []
        for x in rv["results"]:
            a = x.get("asm", {})
            for rr in x.get("execution", {}).get("runs", []):
                res = "SIGILL" if rr["signal"] else ("PASS" if rr["result"] and '"PASS"' in rr["result"] else "FAIL")
                tbl.append([x["target"], x["shape"], x.get("vmfb_bytes"), a.get("fma_vector", 0), a.get("fma_scalar", 0),
                            a.get("vsetvl", 0), rr["qemu_cpu"], res])
        md += [_table(["Build", "Shape", "vmfb bytes", "RVV FMA (static)", "scalar FMA (static)", "vsetvl",
                       "QEMU cpu", "Result"], tbl), "",
               "QEMU is functional emulation: these rows establish correctness and ISA usage, not RISC-V performance.", ""]
    out = RESULTS / "REPORT.md"
    out.write_text("\n".join(md))
    return out
