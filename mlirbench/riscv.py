"""RISC-V: cross-compile, inspect generated RVV code, and *execute* under QEMU.

v1 could only say "cross-compiled for RISC-V". v2 goes further without a
RISC-V board:

1. IREE compiles the matmul dispatch for riscv64 as a static library
   (--iree-llvmcpu-link-static), with and without the V extension.
2. harness/static_dispatch_harness.c (libc only, no IREE runtime) links the
   dispatch, walks the compiler's workgroup grid and checks the result
   against a float64 reference. It is cross-compiled with riscv64-linux-gnu-gcc.
3. qemu-riscv64 (user mode) runs it at several vector lengths (VLEN).
   Negative control: the RVV build must trap with SIGILL when V is disabled.

QEMU is functional emulation: this validates correctness and ISA usage.
Its wall-clock time says nothing about RISC-V hardware performance and is
deliberately not reported as a performance number.
"""
from __future__ import annotations

import re
import shutil


from .asm import analyze_dir
from .common import BUILD, RESULTS, ROOT, find_tool, run, write_json
from .compiler import BASE_FLAGS
from .kernels import Shape, matmul_mlir

TRIPLE = "riscv64-unknown-linux-gnu"
TARGETS = {
    "rv64gcv": "+m,+a,+f,+d,+c,+v",
    "rv64gc": "+m,+a,+f,+d,+c",
}


def rv_flags(features: str) -> list[str]:
    return [f"--iree-llvmcpu-target-triple={TRIPLE}", "--iree-llvmcpu-target-cpu=generic-rv64",
            f"--iree-llvmcpu-target-cpu-features={features}", "--iree-llvmcpu-target-abi=lp64d",
            "--iree-opt-data-tiling=false"]


def workgroup_count(ir: str) -> tuple[int, int, int]:
    """Resolve `hal.return %a, %b, %c` in the export's count region to constants."""
    m = re.search(r"count\(%arg0: !hal\.device\) -> \(index, index, index\) \{(.*?)hal\.return ([^:]+):", ir, re.S)
    if not m:
        raise RuntimeError("could not find workgroup count region")
    body, names = m.group(1), [n.strip() for n in m.group(2).split(",")]
    consts = dict(re.findall(r"(%\w+) = arith\.constant (\d+) : index", body))
    return tuple(int(consts[n]) for n in names)  # type: ignore[return-value]


def tools() -> dict:
    t = {}
    for name in ("riscv64-linux-gnu-gcc", "qemu-riscv64"):
        t[name] = shutil.which(name)
    return t


def build_and_run(shape: Shape, target: str, vlens=(128, 256, 512)) -> dict:
    feats = TARGETS[target]
    out = BUILD / "riscv" / f"{target}_{shape.name}"
    if out.exists():
        shutil.rmtree(out)
    out.mkdir(parents=True)
    src = out / "kernel.mlir"
    src.write_text(matmul_mlir(shape))
    flags = BASE_FLAGS + rv_flags(feats)
    ic = find_tool("iree-compile")
    rec: dict = {"target": target, "features": feats, "shape": shape.name}
    # (a) regular embedded-ELF module + dumped assembly for inspection
    p = run([ic, src, *flags, f"--iree-hal-dump-executable-files-to={out/'dump'}",
             "-o", out / "kernel.vmfb"])
    if p.returncode:
        rec["error"] = p.stderr[-800:]
        return rec
    rec["vmfb_bytes"] = (out / "kernel.vmfb").stat().st_size
    rec["asm"] = analyze_dir(out / "dump")
    # (b) static library for the harness
    p = run([ic, src, *flags, "--iree-llvmcpu-link-embedded=false", "--iree-llvmcpu-link-static",
             f"--iree-llvmcpu-static-library-output-path={out/'dispatch.o'}", "-o", out / "static.vmfb"])
    if p.returncode:
        rec["error"] = p.stderr[-800:]
        return rec
    ir = run([ic, src, *flags, "--compile-to=executable-targets"]).stdout
    wg = workgroup_count(ir)
    fn = re.search(r"(\w+)_library_query", (out / "dispatch.h").read_text()).group(0)
    rec["workgroups"] = wg
    t = tools()
    if not all(t.values()):
        rec["execution"] = {"status": "skipped", "reason": f"missing tools: {t}"}
        return rec
    exe = out / "harness"
    march = "rv64gcv" if "+v" in feats else "rv64gc"
    p = run([t["riscv64-linux-gnu-gcc"], "-O2", f"-march={march}", "-mabi=lp64d", "-static",
             f"-I{ROOT/'harness'}", f"-DQUERY_FN={fn}", f"-DMM={shape.M}", f"-DKK={shape.K}",
             f"-DNN={shape.N}", f"-DWG_X={wg[0]}", f"-DWG_Y={wg[1]}", f"-DWG_Z={wg[2]}",
             ROOT / "harness" / "static_dispatch_harness.c", out / "dispatch.o", "-lm", "-o", exe])
    if p.returncode:
        rec["execution"] = {"status": "link_error", "error": p.stderr[-800:]}
        return rec
    runs = []
    cpus = [f"rv64,v=true,vext_spec=v1.0,vlen={v}" for v in vlens] if "+v" in feats else ["rv64,v=false"]
    if "+v" in feats:
        cpus.append("rv64,v=false")  # negative control
    for cpu in cpus:
        r = run([t["qemu-riscv64"], "-cpu", cpu, exe], timeout=900)
        line = next((l for l in r.stdout.splitlines() if l.startswith("{")), "")
        runs.append({"qemu_cpu": cpu, "returncode": r.returncode,
                     "result": line or None,
                     "signal": "SIGILL" if ("Illegal instruction" in r.stderr or r.returncode in (-4, 132)) else None})
    rec["execution"] = {"status": "ran", "runs": runs}
    return rec


def run_all(shapes: list[Shape]) -> dict:
    res = {"tools": tools(), "results": []}
    for s in shapes:
        for tgt in TARGETS:
            res["results"].append(build_and_run(s, tgt))
    write_json(RESULTS / "riscv.json", res)
    return res
