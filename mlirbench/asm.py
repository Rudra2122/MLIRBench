"""Static instruction-mix analysis of the assembly IREE generated.

These are *static* counts over the emitted .s (what the compiler produced),
not dynamic counts (what the CPU retired - that is counters.py). They answer
codegen questions directly: did the kernel vectorize, at what width, did a
register tile spill, and did a RISC-V build actually contain RVV code.
"""
from __future__ import annotations

import re
from collections import Counter
from pathlib import Path

_X86_WIDTH = (("%zmm", 512), ("%ymm", 256), ("%xmm", 128))


def _x86_width(ops: str) -> int:
    for reg, w in _X86_WIDTH:
        if reg in ops:
            return w
    return 0


def _classify_x86(mn: str, ops: str, c: Counter) -> None:
    w = _x86_width(ops)
    if re.match(r"v?f(n)?m(add|sub)", mn):
        if mn.endswith(("ps", "pd")):
            c[f"fma_packed_{w}"] += 1
        else:
            c["fma_scalar"] += 1
    elif re.match(r"v?(mul|add|sub)(ps|pd)$", mn):
        c[f"fp_packed_{w}"] += 1
    elif re.match(r"v?(mul|add|sub)(ss|sd)$", mn):
        c["fp_scalar"] += 1
    if w and ("(" in ops) and re.match(r"v(mov|broadcast|gather|scatter|pbroadcast|insert|extract)", mn):
        dest_mem = ops.rstrip().endswith(")")
        c["vec_store" if dest_mem else "vec_load"] += 1
        if "(%rsp)" in ops or "(%rbp)" in ops:
            c["vec_stack_access"] += 1
    if w:
        c["widest"] = max(c["widest"], w)


def _classify_riscv(mn: str, ops: str, c: Counter) -> None:
    if re.match(r"vf(n)?m(acc|add|sac|sub)\.", mn):
        c["fma_vector"] += 1
    elif re.match(r"vf(mul|add|sub|redusum|redosum)\.", mn):
        c["fp_vector"] += 1
    elif re.match(r"f(n)?m(add|sub)\.[sd]$", mn):
        c["fma_scalar"] += 1
    elif re.match(r"f(mul|add|sub)\.[sd]$", mn):
        c["fp_scalar"] += 1
    if re.match(r"vl(s)?e\d+\.v|vl\dre\d+\.v", mn):
        c["vec_load"] += 1
    elif re.match(r"vs(s)?e\d+\.v|vs\dr\.v", mn):
        c["vec_store"] += 1
    if mn.startswith("vset"):
        c["vsetvl"] += 1
    if re.match(r"v(l\dre\d+|s\dr)\.v", mn) and "(sp)" in ops:
        c["vec_stack_access"] += 1


def _classify_aarch64(mn: str, ops: str, c: Counter) -> None:
    if mn in ("fmla", "fmls"):
        if re.search(r"\bz\d+\.s", ops):
            c["fma_vector_sve"] += 1
        elif re.search(r"\bv\d+\.(4s|2d|8h)", ops):
            c["fma_packed_128"] += 1
        else:
            c["fma_scalar"] += 1
    elif mn in ("fmadd", "fmsub"):
        c["fma_scalar"] += 1
    elif mn in ("fmul", "fadd"):
        c["fp_packed_128" if re.search(r"\bv\d+\.", ops) else "fp_scalar"] += 1
    if mn in ("ldr", "ldp", "ld1") and re.search(r"\bq\d+|v\d+\.", ops):
        c["vec_load"] += 1
    if mn in ("str", "stp", "st1") and re.search(r"\bq\d+|v\d+\.", ops):
        c["vec_store"] += 1


def detect_isa(text: str) -> str:
    if "%zmm" in text or "%ymm" in text or "%xmm" in text or "%rsp" in text:
        return "x86_64"
    if re.search(r"\bvsetvli\b|\bfmadd\.s\b|\bsd\s+ra,", text) or ".attribute\tarch" in text:
        return "riscv64"
    return "aarch64"


CLASSIFIERS = {"x86_64": _classify_x86, "riscv64": _classify_riscv, "aarch64": _classify_aarch64}


def classify(mn: str, ops: str, isa: str, c: Counter) -> None:
    """Classify one instruction into the counter (shared with elfinspect.py)."""
    c["instructions"] += 1
    CLASSIFIERS[isa](mn.lower(), ops, c)


def analyze_text(text: str, isa: str | None = None) -> dict:
    isa = isa or detect_isa(text)
    c: Counter = Counter()
    for raw in text.splitlines():
        line = raw.split("#")[0] if isa == "x86_64" else raw.split("//")[0]
        s = line.strip()
        if not s or s.startswith(".") or s.endswith(":"):
            continue
        parts = s.split(None, 1)
        classify(parts[0], parts[1] if len(parts) > 1 else "", isa, c)
    out = dict(c)
    out["isa"] = isa
    return out


def function_text(text: str, symbol: str) -> str:
    """The lines of one function in a .s file: from `symbol:` to its .Lfunc_end/.size."""
    out, inside = [], False
    for line in text.splitlines():
        s = line.strip()
        if not inside:
            inside = s == f"{symbol}:"
            continue
        if s.startswith(".Lfunc_end") or s.startswith(f".size\t{symbol},") or s.startswith(f".size {symbol},"):
            break
        out.append(line)
    return "\n".join(out)


def analyze_file(path: Path) -> dict:
    out = analyze_text(path.read_text(errors="replace"))
    out["file"] = path.name
    return out


def analyze_dir(dump_dir: Path | None) -> dict:
    """Aggregate over every dispatch's .s in an IREE dump directory."""
    if not dump_dir or not Path(dump_dir).exists():
        return {}
    files = sorted(Path(dump_dir).glob("*.s"))
    per = [analyze_file(f) for f in files]
    total: Counter = Counter()
    for p in per:
        for k, v in p.items():
            if isinstance(v, int) and k != "widest":
                total[k] += v
    agg = dict(total)
    agg["widest_vector_bits"] = max([p.get("widest", 0) for p in per] or [0])
    agg["isa"] = per[0]["isa"] if per else None
    agg["dispatch_files"] = len(per)
    packed = sum(v for k, v in agg.items() if k.startswith(("fma_packed", "fma_vector")))
    agg["fma_vector_total"] = packed
    agg["vectorized"] = packed > 0
    # The .s also holds runtime helpers (expf, powf, fmaf, f16 conversions) that the
    # linker drops from the shipped .so; their stack accesses and scalar FP ops are
    # not the dispatch's. Same counts restricted to the dispatch functions only
    # (cross-checked against objdump of the ELF in elfinspect.py):
    disp: Counter = Counter()
    for f in files:
        text = f.read_text(errors="replace")
        for sym in re.findall(r"^(\w+_dispatch_\d+\w*):\s*$", text, re.M):
            for k, v in analyze_text(function_text(text, sym), agg["isa"]).items():
                if isinstance(v, int) and k != "widest":
                    disp[k] += v
    agg["dispatch_only"] = dict(disp)
    return agg
