"""Capture the IR of one kernel at every IREE phase, plus LLVM IR and assembly.

Output: results/ir/<variant>_<shape>/NN_<phase>.mlir, llvm/*.ll, *.s and a
summary.json listing, per phase, the dispatches and the key ops present
(pack / mmt4d / unpack / vector.contract / vector.fma ...). The written
walkthrough in docs/COMPILER_WALKTHROUGH.md is based on these files.
"""
from __future__ import annotations

import re
import shutil
from pathlib import Path

from .asm import analyze_dir
from .common import RESULTS, write_json
from .compiler import VARIANTS, compile_to_phase, compile_variant
from .kernels import Shape, matmul_mlir

PHASES = ["input", "global-optimization", "dispatch-creation", "flow", "stream",
          "executable-sources", "executable-configurations", "executable-targets", "hal"]

OPS = ["linalg.matmul", "linalg.mmt4d", "linalg.pack", "linalg.unpack", "tensor.pack",
       "tensor.unpack", "iree_encoding.set_encoding", "iree_encoding.unset_encoding",
       "iree_encoding.encoding", "flow.dispatch", "stream.cmd.dispatch", "hal.command_buffer.dispatch",
       "vector.contract", "vector.fma", "vector.outerproduct", "llvm.intr.fmuladd", "scf.for",
       "scf.forall", "iree_uk", "memref.alloca"]

EXPORT_RE = re.compile(r"(?:flow|stream|hal)\.executable\.export public @(\w+)")
CFG_RE = re.compile(r"lowering_config = (#iree_cpu\.lowering_config<[^>]*>|#iree_codegen\.lowering_config<[^>]*>)")
PIPE_RE = re.compile(r"translation_info = #iree_codegen\.translation_info<pipeline = (\w+)")


def summarize(text: str) -> dict:
    return {
        "lines": text.count("\n"),
        "dispatch_exports": sorted(set(EXPORT_RE.findall(text))),
        "op_counts": {op: text.count(op) for op in OPS if op in text},
        "lowering_configs": sorted(set(CFG_RE.findall(text)))[:8],
        "pipelines": sorted(set(PIPE_RE.findall(text))),
    }


def capture(shape: Shape, variant_name: str) -> dict:
    v = VARIANTS[variant_name]
    if v.needs_tuning:
        from .autotune import best_tile
        tile = best_tile(shape)
    else:
        tile = v.tile(shape) if v.tile else None
    out = RESULTS / "ir" / f"{variant_name}_{shape.name}"
    if out.exists():
        shutil.rmtree(out)
    out.mkdir(parents=True)
    src = out / "00_source.mlir"
    src.write_text(matmul_mlir(shape, tile))
    summary = {"variant": variant_name, "shape": shape.name, "flags": v.flags, "phases": {}}
    for i, ph in enumerate(PHASES, start=1):
        dst = out / f"{i:02d}_{ph}.mlir"
        ok, err = compile_to_phase(src, v.flags, ph, dst)
        summary["phases"][ph] = summarize(dst.read_text()) if ok else {"error": err[-500:]}
    res = compile_variant(shape, v, tile=tile)
    if res.ok and res.dump_dir:
        llvm = out / "llvm"
        llvm.mkdir()
        for f in Path(res.dump_dir).iterdir():
            if f.suffix in (".ll", ".s") or f.name.startswith("configured_"):
                shutil.copy(f, llvm / f.name)
        summary["asm"] = analyze_dir(res.dump_dir)
    write_json(out / "summary.json", summary)
    return summary
