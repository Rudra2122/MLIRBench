"""Hand-written codegen schedule (MLIR transform dialect) for the matmul dispatch.

schedules/matmul.mlir.in is a transform-dialect script that replaces IREE's
CPUDoubleTilingExpert pipeline for the matmul: it tiles, fuses, vectorizes,
hoists, bufferizes, maps to workgroups and lowers vectors itself. This module
renders it for a tile configuration and a set of enabled stages, and runs the
stage ladder:

  S1 tile + vectorize          default vector.contract lowering (IREE's LLVM conversion)
  S2 + outer-product lowering  contract -> outerproduct -> fma, staged patterns
  S3 + accumulator hoisting    C tile carried in registers across the K loop
  S4 + fill fused              accumulator starts as zeros in registers
  S5 + K blocking              cache-level K tile (GEMM "kc" blocking), TK searched
                               over {64..512}; something IREE's own pipeline cannot
                               express in 3.11 (cache_reduction fails to compile)

Each rung is compiled, checked against NumPy and benchmarked, and compared with
IREE's own pipeline given the *same* tile sizes (the vec_autotuned variant),
so the comparison isolates the schedule, not the tile choice.
"""
from __future__ import annotations

import hashlib
import re
from pathlib import Path
from typing import Optional

from .asm import analyze_dir
from .autotune import best_tile, heuristic_tiles
from .bench import benchmark, check_correctness
from .common import BUILD, RESULTS, ROOT, read_json, write_json
from .compiler import HOST, NO_DT, compile_kernel
from .kernels import Shape, TileConfig
from .thermal import guard

TEMPLATE = ROOT / "schedules" / "matmul.mlir.in"

STAGES = {
    "S1_tile_vectorize": {"tile_separate"},
    "S2_outerproduct": {"tile_separate", "lower"},
    "S3_hoist_acc": {"tile_separate", "lower", "hoist"},
    "S4_fuse_fill": {"tile_fused", "lower", "hoist"},
}
# Optional extension, not a ladder rung: K blocking needs the separate fill
# (a fill fused below a K loop would re-zero C every K block).
KTILE_BASE = {"tile_separate", "lower", "hoist", "ktile"}
TITLES = {
    "S1_tile_vectorize": "tile + vectorize (default contract lowering)",
    "S2_outerproduct": "+ contract -> outer-product FMAs",
    "S3_hoist_acc": "+ C accumulator hoisted out of K loop",
    "S4_fuse_fill": "+ zero-fill fused into register tile",
    "S5_kblock": "+ cache-level K blocking (TK searched)",
}
TK_CANDIDATES = (64, 128, 256, 512)
ALL_SECTIONS = {"tile_separate", "tile_fused", "hoist", "lower", "ktile"}


def render(cfg: TileConfig, enabled: set[str], tk: int = 0) -> str:
    text = TEMPLATE.read_text()
    for sec in ALL_SECTIONS - enabled:
        text = re.sub(rf"\n[ \t]*// BEGIN:{sec}\n.*?// END:{sec}\n", "\n", text, flags=re.S)
    text = re.sub(r"[ \t]*// (BEGIN|END):\w+\n", "", text)
    for k, v in {"TM": cfg.tm, "TN": cfg.tn, "VM": cfg.vm, "VN": cfg.vn, "VK": cfg.vk, "TK": tk}.items():
        text = text.replace("${" + k + "}", str(v))
    return text


def supported(shape: Shape, cfg: TileConfig) -> Optional[str]:
    """The schedule assumes full tiles (static vector shapes); say why not."""
    for dim, t, name in ((shape.M, cfg.tm, "tm"), (shape.N, cfg.tn, "tn"),
                         (cfg.tm, cfg.vm, "vm"), (cfg.tn, cfg.vn, "vn"), (shape.K, cfg.vk, "vk")):
        if t <= 0 or dim % t:
            return f"{name}={t} does not divide {dim}: schedule handles full tiles only"
    return None


def compile_schedule(shape: Shape, cfg: TileConfig, stage: str, tk: int = 0):
    spec = render(cfg, KTILE_BASE if stage.startswith("K") else STAGES[stage], tk)
    d = BUILD / "schedules"
    d.mkdir(parents=True, exist_ok=True)
    path = d / f"{stage}_{hashlib.sha1(spec.encode()).hexdigest()[:10]}.mlir"
    path.write_text(spec)
    tcfg = TileConfig(cfg.tm, cfg.tn, cfg.vm, cfg.vn, cfg.vk, pipeline="TransformDialectCodegen")
    return compile_kernel(shape, HOST + NO_DT, tile=tcfg, tag=f"td_{stage}",
                          extra=[f"--iree-codegen-transform-dialect-library={path}"]), path


def tile_for(shape: Shape) -> TileConfig:
    t = best_tile(shape)
    if t:
        return t
    h = heuristic_tiles(shape)
    return TileConfig(h["tm"], h["tn"], h["vm"], h["vn"], h["vk"])


def ladder(shape: Shape, cfg: Optional[TileConfig] = None, log=print) -> dict:
    cfg = cfg or tile_for(shape)
    why = supported(shape, cfg)
    out = {"shape": shape.to_dict(), "tile": cfg.key, "rows": []}
    if why:
        out["skipped"] = why
        log(f"  {shape.name}: skipped ({why})")
        return out
    pre = guard().before(f"schedule {shape.name}")
    ref = compile_kernel(shape, HOST + NO_DT, tile=cfg, tag="tune")  # IREE pipeline, same tiles
    from .compiler import VARIANTS, compile_variant
    packed = compile_variant(shape, VARIANTS["packed_late"])  # IREE's best at large sizes
    entries = [(s, *compile_schedule(shape, cfg, s)) for s in STAGES] + [
        ("IREE_same_tiles", ref, None), ("IREE_packed_late", packed, None)]
    # S5: K blocking, searched over TK (only where K can actually be blocked)
    tks = [t for t in TK_CANDIDATES if t < shape.K and shape.K % t == 0 and t % cfg.vk == 0]
    if tks:
        sweep = []
        for tk in tks:
            r, pth = compile_schedule(shape, cfg, "K", tk)
            if r.ok and check_correctness(r.vmfb, shape)["ok"]:
                ms = benchmark(r.vmfb, shape, repetitions=3, min_time="0.1s")["median_ms"]
                sweep.append((ms, tk, r, pth))
                log(f"  {shape.name:<16} S5 tk={tk:<4}          {ms:9.4f} ms")
        if sweep:
            ms, tk, r, pth = min(sweep, key=lambda x: x[0])
            out["tk_sweep"] = {t: m for m, t, _, _ in sweep}
            out["best_tk"] = tk
            entries.insert(len(entries) - 2, ("S5_kblock", r, pth))

    for stage, res, spec_path in entries:
        row = {"stage": stage, "title": TITLES.get(stage, {
                   "IREE_same_tiles": "IREE CPUDoubleTilingExpert, same tiles",
                   "IREE_packed_late": "IREE packed layout (late materialization)"}.get(stage)),
               "spec": str(spec_path) if spec_path else None, "compile": res.to_dict()}
        if not res.ok:
            row["status"] = "compile_error"
            log(f"  {shape.name:<16} {stage:<20} COMPILE ERROR")
            out["rows"].append(row)
            continue
        corr = check_correctness(res.vmfb, shape)
        b = benchmark(res.vmfb, shape, repetitions=7, min_time="0.2s")
        b.pop("samples_ms", None); b.pop("context", None)
        row.update(correctness=corr, timing=b, asm=analyze_dir(res.dump_dir),
                   status="ok" if corr["ok"] and b.get("ok") else "incorrect")
        log(f"  {shape.name:<16} {stage:<20} {b['median_ms']:9.4f} ms {b['gflops']:7.1f} GF/s "
            f"corr={'ok' if corr['ok'] else 'FAIL'} fma_zmm={row['asm'].get('fma_packed_512', 0)}")
        out["rows"].append(row)
    ok = {r["stage"]: r for r in out["rows"] if r.get("status") == "ok"}
    # Confirmation: the last rungs and IREE are within a few percent of each
    # other, where single measurements on a shared host are unreliable (one
    # 512^3 sample was 23% off). Re-measure them interleaved, 3 rounds, and
    # report the median of the round medians.
    final = [s for s in ("S3_hoist_acc", "S4_fuse_fill", "S5_kblock", "IREE_same_tiles",
                         "IREE_packed_late") if s in ok]
    rounds: dict[str, list[float]] = {s: [] for s in final}
    for _ in range(3):
        for s in final:
            vm = Path(ok[s]["compile"]["vmfb"])
            rounds[s].append(benchmark(vm, shape, repetitions=5, min_time="0.2s")["median_ms"])
    for s in final:
        ok[s]["confirm_ms"] = sorted(rounds[s])[1]
        # noise on a shared host only ever adds time: the min is the best
        # estimate of what the code can do, and is what the ratio uses
        ok[s]["confirm_min_ms"] = min(rounds[s])
        ok[s]["confirm_rounds_ms"] = rounds[s]
        log(f"  {shape.name:<16} {s:<20} confirm min {ok[s]['confirm_min_ms']:.4f} ms  rounds {['%.4f' % x for x in rounds[s]]}")
    if "S4_fuse_fill" in ok and "IREE_same_tiles" in ok:
        out["full_schedule_vs_iree"] = ok["IREE_same_tiles"]["confirm_min_ms"] / ok["S4_fuse_fill"]["confirm_min_ms"]
    if "S5_kblock" in ok and "IREE_same_tiles" in ok:
        out["kblock_vs_iree"] = ok["IREE_same_tiles"]["confirm_min_ms"] / ok["S5_kblock"]["confirm_min_ms"]
    mine = [ok[s]["confirm_min_ms"] for s in ("S4_fuse_fill", "S5_kblock") if s in ok]
    iree = [ok[s]["confirm_min_ms"] for s in ("IREE_same_tiles", "IREE_packed_late") if s in ok]
    if mine and iree:
        out["best_mine_vs_best_iree"] = min(iree) / min(mine)
    out["thermal"] = {"before": pre, "after": guard().after(f"schedule {shape.name}")}
    return out


def run(shapes: list[Shape], log=print) -> dict:
    new = [ladder(s, log=log) for s in shapes]
    old = (read_json(RESULTS / "schedule.json") or {}).get("results", [])
    names = {r["shape"]["name"] for r in new}
    res = {"template": str(TEMPLATE.relative_to(ROOT)),
           "results": [r for r in old if r["shape"]["name"] not in names] + new}
    write_json(RESULTS / "schedule.json", res)
    # keep one fully rendered schedule next to the results for reading
    for r in new:
        if r.get("rows"):
            sh = Shape(r["shape"]["M"], r["shape"]["K"], r["shape"]["N"])
            m = re.match(r"d(\d+)x(\d+)_v(\d+)x(\d+)x(\d+)", r["tile"])
            cfg = TileConfig(*map(int, m.groups()))
            (RESULTS / f"schedule_{sh.name}.mlir").write_text(render(cfg, STAGES["S4_fuse_fill"]))
            if r.get("best_tk"):
                (RESULTS / f"schedule_{sh.name}_kblock{r['best_tk']}.mlir").write_text(
                    render(cfg, KTILE_BASE, r["best_tk"]))
    return res
