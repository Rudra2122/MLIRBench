"""Binary-level check: ELF headers, sections, symbol tables, disassembly and DWARF.

asm.py reads the .s text IREE prints before assembling. This module looks at
what IREE actually *ships*: the ELF objects it links, using standard binutils /
LLVM tools, and checks that the two views agree.

For every compiled kernel (host ISA, and cross-compiled AArch64 and RISC-V):

1. Compile with --iree-llvmcpu-debug-symbols=true. The dump directory
   (--iree-hal-dump-executable-files-to, the meta flag that includes
   --iree-hal-dump-executable-binaries-to and -intermediates-to) holds the
   relocatable object (.o) and the linked embedded-ELF shared object (.so).
2. readelf -h -S -W: ELF class, machine and type, and the section table
   (.text, .rodata, .data.rel.ro, .debug_*).
3. readelf -s -W / nm -S: symbol tables. In the .o the dispatch function is a
   local FUNC symbol with a size; in the linked .so, .dynsym/.symtab only keep
   iree_hal_executable_library_query, and the runtime reaches the dispatch
   through the function table that query returns.
4. objdump -d --disassemble=<dispatch> on the .o: classify every instruction
   with asm.py's classifiers and compare with asm.py run on just that function
   in the .s. FMA, vector-width, load/store and spill counts must match.
5. llvm-dwarfdump --debug-info / --debug-line on the .so: DW_TAG_subprogram
   gives the dispatch's address range in the linked binary (checked against
   the .o symbol size), and the line table maps the hottest loop back to lines
   of the MLIR the kernel was compiled from.
   On an x86 host the cross targets are AArch64 and RISC-V; on an Apple
   Silicon host they are x86-64 (Emerald Rapids, the C4 CPU) and RISC-V,
   so every machine covers all three ISAs.
6. Optional: the statically linked RISC-V harness built by riscv.py with
   riscv64-linux-gnu-gcc (EXEC, RISC-V machine, dispatch symbol kept in .symtab).
"""
from __future__ import annotations

import platform
import re
import shutil
from collections import Counter
from pathlib import Path
from typing import Optional

from .asm import analyze_text, classify, function_text
from .common import RESULTS, run, write_json
from .compiler import VARIANTS, compile_kernel, compile_variant
from .kernels import Shape

DEBUG = ["--iree-llvmcpu-debug-symbols=true"]

# Cross targets: embedded ELF for a machine we may not be running on.
CROSS = {
    "x86_64": ["--iree-llvmcpu-target-triple=x86_64-unknown-linux-gnu",
               "--iree-llvmcpu-target-cpu=emeraldrapids",  # the Google Cloud C4 CPU
               "--iree-opt-data-tiling=false"],
    "aarch64": ["--iree-llvmcpu-target-triple=aarch64-unknown-linux-gnu",
                "--iree-llvmcpu-target-cpu=generic", "--iree-llvmcpu-target-cpu-features=+neon",
                "--iree-opt-data-tiling=false"],
    "riscv64": ["--iree-llvmcpu-target-triple=riscv64-unknown-linux-gnu",
                "--iree-llvmcpu-target-cpu=generic-rv64",
                "--iree-llvmcpu-target-cpu-features=+m,+a,+f,+d,+c,+v",
                "--iree-llvmcpu-target-abi=lp64d", "--iree-opt-data-tiling=false"],
}
HOST_VARIANTS = ["v1_generic_isa", "vec_heuristic", "packed_mmt4d_ukernel"]
DEFAULT_SHAPES = [Shape(128, 128, 128), Shape(512, 512, 512)]

# Keys that must agree between the .s view and the binary view.
CHECK_KEYS = ("fma_packed_512", "fma_packed_256", "fma_packed_128", "fma_scalar", "fma_vector",
              "fma_vector_sve", "fp_packed_512", "fp_packed_256", "fp_packed_128", "fp_scalar",
              "fp_vector", "vec_load", "vec_store", "vec_stack_access", "vsetvl")

ELF_MACHINE_ISA = {"X86-64": "x86_64", "AArch64": "aarch64", "RISC-V": "riscv64"}
GNU_PREFIX = {"x86_64": "x86_64-linux-gnu", "aarch64": "aarch64-linux-gnu", "riscv64": "riscv64-linux-gnu"}
BREW_LLVM = [Path("/opt/homebrew/opt/llvm/bin"), Path("/usr/local/opt/llvm/bin")]


# --------------------------------------------------------------------------- tools

def _which(*names: str) -> Optional[str]:
    for n in names:
        for d in BREW_LLVM:  # Homebrew LLVM first, so a conda/system copy can't shadow it
            if n.startswith("llvm-") and (d / n).exists():
                return str(d / n)
        p = shutil.which(n)
        if p:
            return p
        for d in BREW_LLVM:
            if (d / n).exists():
                return str(d / n)
    return None


MAC = platform.system() == "Darwin"


def tool_paths() -> dict:
    """On macOS, always prefer Homebrew's LLVM tools: /usr/bin/nm and a conda or
    Homebrew GNU binutils build for Darwin may not read Linux ELF files."""
    pick = (lambda gnu, llvm: _which(llvm, gnu)) if MAC else (lambda gnu, llvm: _which(gnu, llvm))
    return {"readelf": pick("readelf", "llvm-readelf"),
            "nm": pick("nm", "llvm-nm"),
            "objdump": pick("objdump", "llvm-objdump"),
            "llvm-objdump": _which("llvm-objdump"),
            "llvm-dwarfdump": _which("llvm-dwarfdump", "dwarfdump")}


def _objdump_candidates(isa: str) -> list[str]:
    """GNU cross objdump first (Linux), then the host objdump, then llvm-objdump (any target).
    On macOS llvm-objdump goes first."""
    if MAC:
        c = [_which("llvm-objdump"), _which(f"{GNU_PREFIX[isa]}-objdump"), _which("objdump")]
    else:
        c = [_which(f"{GNU_PREFIX[isa]}-objdump"), _which("objdump"), _which("llvm-objdump")]
    return [x for x in dict.fromkeys(c) if x]


def _out(cmd: list) -> str:
    p = run(cmd, timeout=300)
    if p.returncode:
        raise RuntimeError(f"{' '.join(map(str, cmd))}: {p.stderr[-400:]}")
    return p.stdout


# --------------------------------------------------------------------------- readelf / nm

def elf_header(path: Path) -> dict:
    h = {}
    for line in _out([tool_paths()["readelf"], "-h", "-W", path]).splitlines():
        if ":" in line:
            k, v = (s.strip() for s in line.split(":", 1))
            if k in ("Class", "Type", "Machine"):
                h[k.lower()] = v
    m = h.get("machine", "")
    h["isa"] = next((isa for key, isa in ELF_MACHINE_ISA.items()
                     if key.lower().replace("-", "") in m.lower().replace("-", "")
                     or (key == "X86-64" and "x86-64" in m.lower())), None)
    return h


_SEC_RE = re.compile(r"\[\s*(\d+)\]\s+(\S+)\s+(\S+)\s+([0-9a-f]+)\s+([0-9a-f]+)\s+([0-9a-f]+)")


def sections(path: Path) -> list[dict]:
    out = []
    for line in _out([tool_paths()["readelf"], "-S", "-W", path]).splitlines():
        m = _SEC_RE.search(line)
        if m and int(m.group(1)) > 0:
            out.append({"name": m.group(2), "type": m.group(3), "size": int(m.group(6), 16)})
    return out


def symbol_tables(path: Path) -> dict[str, list[dict]]:
    """readelf -s -W -> {'.dynsym': [...], '.symtab': [...]}."""
    tables: dict[str, list[dict]] = {}
    cur = None
    for line in _out([tool_paths()["readelf"], "-s", "-W", path]).splitlines():
        m = re.match(r"\s*Symbol table '([^']+)'", line)
        if m:
            cur = tables.setdefault(m.group(1), [])
            continue
        f = line.split()
        if cur is None or len(f) < 7 or not f[0].rstrip(":").isdigit():
            continue
        size = int(f[2], 16) if f[2].startswith("0x") else int(f[2])
        cur.append({"value": int(f[1], 16), "size": size, "type": f[3], "bind": f[4],
                    "ndx": f[6], "name": f[7] if len(f) > 7 else ""})
    return tables


def nm_defined(path: Path) -> list[dict]:
    """nm -S --defined-only: a second, independent reading of the symbol table."""
    out = []
    for line in _out([tool_paths()["nm"], "-S", "--defined-only", path]).splitlines():
        f = line.split()
        if len(f) == 4:
            out.append({"value": int(f[0], 16), "size": int(f[1], 16), "kind": f[2], "name": f[3]})
    return out


# --------------------------------------------------------------------------- objdump

_HEX = re.compile(r"^[0-9a-f]{2,8}$")
_TARGET = re.compile(r"(?:0x)?([0-9a-f]+)\s*<")


def parse_objdump(text: str, isa: str) -> list[dict]:
    """GNU objdump or llvm-objdump -d output -> [{addr, size, mn, ops}]."""
    insns = []
    for line in text.splitlines():
        m = re.match(r"^\s*([0-9a-f]+):\s?(.*)$", line)
        if not m or not m.group(2).strip():
            continue
        fields = [x for x in m.group(2).split("\t")]
        # first non-empty field is the encoding bytes; the rest is the instruction
        i = 0
        while i < len(fields) and not fields[i].strip():
            i += 1
        if i >= len(fields):
            continue
        enc = fields[i].split()
        if not enc or not all(_HEX.match(b) for b in enc):
            continue
        rest = " ".join(x.strip() for x in fields[i + 1:] if x.strip())
        if not rest:
            continue  # GNU x86 continuation line (more encoding bytes, no mnemonic)
        nbytes = sum(len(b) // 2 for b in enc)
        target = _TARGET.search(rest)
        body = rest.split("#" if isa == "x86_64" else "//")[0].strip()
        parts = body.split(None, 1)
        insns.append({"addr": int(m.group(1), 16), "size": nbytes, "mn": parts[0].lower(),
                      "ops": re.sub(r"\s*<[^>]*>", "", parts[1]) if len(parts) > 1 else "",
                      "target": int(target.group(1), 16) if target else None})
    # GNU x86 splits long encodings over two lines: fold the extra bytes into the size
    if isa == "x86_64":
        for a, b in zip(insns, insns[1:]):
            a["size"] = b["addr"] - a["addr"] if b["addr"] > a["addr"] else a["size"]
    return insns


def disassemble(path: Path, isa: str, symbol: str | None = None,
                start: int | None = None, stop: int | None = None) -> tuple[list[dict], str]:
    """Disassemble one symbol (or address range), trying objdumps until one decodes it."""
    last = ""
    for tool in _objdump_candidates(isa):
        cmd = [tool, "-d"]
        if symbol:
            cmd.append(f"--disassemble={symbol}")
        if start is not None:
            cmd += [f"--start-address={start:#x}", f"--stop-address={stop:#x}"]
        p = run([*cmd, path], timeout=300)
        insns = parse_objdump(p.stdout, isa) if p.returncode == 0 else []
        if insns:
            return insns, Path(tool).name
        last = p.stderr[-300:]
    raise RuntimeError(f"no objdump could disassemble {path.name} ({isa}): {last}")


def count(insns: list[dict], isa: str) -> dict:
    c: Counter = Counter()
    for ins in insns:
        classify(ins["mn"], ins["ops"], isa, c)
    return dict(c)


# --------------------------------------------------------------------------- DWARF

def dwarf_subprograms(path: Path) -> list[dict]:
    text = _out([tool_paths()["llvm-dwarfdump"], "--debug-info", path])
    subs, cur = [], None
    for line in text.splitlines():
        if "DW_TAG_" in line:
            cur = {} if "DW_TAG_subprogram" in line else None
            if cur is not None:
                subs.append(cur)
            continue
        if cur is None:
            continue
        m = re.search(r"DW_AT_(low_pc|high_pc|name|decl_line)\s*\((.*)\)", line)
        if m:
            k, v = m.group(1), m.group(2).strip().strip('"')
            cur[k] = int(v, 16) if k in ("low_pc", "high_pc") and v.startswith("0x") else v
    for s in subs:  # DWARF 4+ may store high_pc as an offset from low_pc
        if isinstance(s.get("high_pc"), int) and isinstance(s.get("low_pc"), int) and s["high_pc"] < s["low_pc"]:
            s["high_pc"] += s["low_pc"]
    return [s for s in subs if isinstance(s.get("low_pc"), int) and isinstance(s.get("high_pc"), int)]


def dwarf_lines(path: Path) -> list[dict]:
    """--debug-line -> one dict per line table (one per compile unit / dispatch):
    {"files": {index: name}, "sequences": [[(address, line), ...], ...]}."""
    text = _out([tool_paths()["llvm-dwarfdump"], "--debug-line", path])
    tables: list[dict] = []
    fidx = None
    seq: list[tuple[int, int]] = []
    for line in text.splitlines():
        if line.startswith("debug_line["):
            tables.append({"files": {}, "sequences": []})
            seq = []
            continue
        if not tables:
            continue
        t = tables[-1]
        m = re.match(r"file_names\[\s*(\d+)\]", line.strip())
        if m:
            fidx = int(m.group(1))
            continue
        m = re.match(r'\s*name:\s*"(.*)"', line)
        if m and fidx is not None:
            t["files"][fidx] = m.group(1)
            fidx = None
            continue
        m = re.match(r"^0x([0-9a-f]+)\s+(\d+)\s+\d+\s+\d+", line)
        if m:
            seq.append((int(m.group(1), 16), int(m.group(2))))
            if "end_sequence" in line:
                t["sequences"].append(seq)
                seq = []
    return tables


def line_of(tables: list[dict], addr: int) -> tuple[int, Optional[str]]:
    """Source line covering `addr`: the last row at or below it in the sequence containing it."""
    for t in tables:
        for seq in t["sequences"]:
            if seq and seq[0][0] <= addr < seq[-1][0]:
                ln = 0
                for a, l in seq:
                    if a > addr:
                        break
                    ln = l
                return ln, next(iter(t["files"].values()), None)
    return 0, None


# --------------------------------------------------------------------------- loops

def hot_loop(insns: list[dict], isa: str, lo: int, hi: int) -> Optional[dict]:
    """The backward-branch loop with the most vector FMAs (smallest one on a tie)."""
    loops = []
    for ins in insns:
        t = ins["target"]
        if t is None or not (lo <= t < ins["addr"] < hi):
            continue
        if ins["mn"] in ("call", "callq", "bl", "blr") or (ins["mn"] == "jal" and "ra" in ins["ops"]):
            continue
        body = [x for x in insns if t <= x["addr"] <= ins["addr"]]
        c = count(body, isa)
        fma = sum(v for k, v in c.items() if k.startswith(("fma_packed", "fma_vector")))
        loops.append({"start": t, "end": ins["addr"] + ins["size"], "branch": ins["mn"],
                      "instructions": len(body), "bytes": ins["addr"] + ins["size"] - t,
                      "vector_fma": fma, "scalar_fma": c.get("fma_scalar", 0),
                      "fp_ops": sum(v for k, v in c.items() if k.startswith("fp_")), "counts": c})
    if not loops:
        return None
    loops.sort(key=lambda l: (-(l["vector_fma"] or l["scalar_fma"]), l["bytes"]))
    best = loops[0]
    best["loops_found"] = len(loops)
    return best


def _mlir_op(line: str) -> str:
    m = re.search(r"=\s*([a-z_]+\.[a-z_.0-9]+)", line) or re.search(r"^\s*([a-z_]+\.[a-z_.0-9]+)", line)
    return m.group(1) if m else line.strip()[:40]


# --------------------------------------------------------------------------- one kernel

def inspect_dump(dump: Path) -> list[dict]:
    """Inspect every linked embedded ELF in an IREE dump directory."""
    out = []
    for so in sorted(dump.glob("*.so")):
        obj = so.with_suffix(".o")
        asm = so.with_suffix(".s")
        rec: dict = {"so": so.name, "o_exists": obj.exists()}
        hdr = elf_header(so)
        isa = hdr["isa"]
        rec["elf"] = hdr
        rec["so_sections"] = sections(so)
        so_syms = symbol_tables(so)
        rec["so_symbols"] = {k: [s["name"] for s in v if s["name"]] for k, v in so_syms.items()}
        subs = dwarf_subprograms(so)
        rec["dwarf_subprograms"] = [{"name": s.get("name"), "low_pc": s["low_pc"], "high_pc": s["high_pc"],
                                     "bytes": s["high_pc"] - s["low_pc"]} for s in subs]
        tables = dwarf_lines(so)
        rec["dwarf_line_tables"] = len(tables)
        rec["dwarf_line_rows"] = sum(len(q) for t in tables for q in t["sequences"])
        if obj.exists():
            rec["o_header"] = elf_header(obj)
            o_tabs = symbol_tables(obj)
            o_funcs = [s for s in o_tabs.get(".symtab", []) if s["type"] == "FUNC" and s["size"] > 0]
            rec["o_functions"] = len(o_funcs)
            rec["o_text_bytes"] = sum(s["size"] for s in sections(obj) if s["name"].startswith(".text"))
            try:  # nm is a second opinion on readelf; a broken nm must not stop the run
                nm_names = {s["name"]: s["size"] for s in nm_defined(obj)}
            except RuntimeError as e:
                nm_names = {}
                rec["nm_error"] = str(e)[-300:]
        else:
            o_funcs, nm_names = [], {}
        rec["so_text_bytes"] = sum(s["size"] for s in rec["so_sections"] if s["name"] == ".text")
        s_text = asm.read_text(errors="replace") if asm.exists() else ""
        dispatches = []
        for sp in subs:
            name = sp.get("name") or ""
            if "_dispatch_" not in name:
                continue
            d: dict = {"symbol": name, "so_range": [hex(sp["low_pc"]), hex(sp["high_pc"])],
                       "dwarf_bytes": sp["high_pc"] - sp["low_pc"],
                       "in_so_dynsym": name in rec["so_symbols"].get(".dynsym", []),
                       "in_so_symtab": name in rec["so_symbols"].get(".symtab", [])}
            osym = next((s for s in o_funcs if s["name"] == name), None)
            d["o_symbol_bytes"] = osym["size"] if osym else None
            d["o_symbol_bind"] = osym["bind"] if osym else None
            d["nm_bytes"] = nm_names.get(name)
            d["size_checks_pass"] = (d["o_symbol_bytes"] == d["dwarf_bytes"] == (d["nm_bytes"] or d["dwarf_bytes"]))
            # (4) objdump of the .o symbol vs asm.py on the same function in the .s
            if obj.exists():
                o_insns, tool = disassemble(obj, isa, symbol=name)
                d["objdump_tool"] = tool
                d["objdump_bytes"] = o_insns[-1]["addr"] + o_insns[-1]["size"] - o_insns[0]["addr"]
                binc = count(o_insns, isa)
                srcc = analyze_text(function_text(s_text, name), isa) if s_text else {}
                d["binary_counts"] = binc
                d["asm_counts"] = {k: v for k, v in srcc.items() if k != "isa"}
                keys = sorted(k for k in set(binc) | set(srcc) if k in CHECK_KEYS)
                d["mismatches"] = {k: [srcc.get(k, 0), binc.get(k, 0)] for k in keys
                                   if srcc.get(k, 0) != binc.get(k, 0)}
                d["counts_match"] = bool(srcc) and not d["mismatches"]
                d["instructions_s_vs_binary"] = [srcc.get("instructions", 0), binc.get("instructions", 0)]
                d["whole_file_asm"] = {k: v for k, v in analyze_text(s_text, isa).items()
                                       if k in CHECK_KEYS or k == "instructions"} if s_text else {}
            # (5) the linked .so: hot loop -> DWARF line -> MLIR op
            so_insns, tool = disassemble(so, isa, start=sp["low_pc"], stop=sp["high_pc"])
            loop = hot_loop(so_insns, isa, sp["low_pc"], sp["high_pc"])
            if loop:
                hist: Counter = Counter()
                src_name = None
                for ins in so_insns:
                    if int(loop["start"]) <= ins["addr"] < int(loop["end"]):
                        ln, fname = line_of(tables, ins["addr"])
                        hist[ln] += 1
                        src_name = src_name or fname
                src = dump / Path(src_name).name if src_name else None
                src_lines = src.read_text(errors="replace").splitlines() if src and src.exists() else []
                decl = int(sp.get("decl_line") or 0)
                lines = []
                for ln, n in hist.most_common():
                    text = src_lines[ln - 1] if 0 < ln <= len(src_lines) else ""
                    if ln == 0:
                        op = "(line 0: no source location)"
                    elif ln == decl:
                        op = "(function-level location only)"
                    else:
                        op = _mlir_op(text)
                    lines.append({"line": ln, "instructions": n, "op": op})
                loop.pop("counts", None)
                total = sum(hist.values())
                op_level = sum(x["instructions"] for x in lines if not x["op"].startswith("("))
                loop["op_level_location_pct"] = round(100 * op_level / total, 1) if total else 0.0
                loop["start"], loop["end"] = hex(loop["start"]), hex(loop["end"])
                loop["dwarf_lines"] = lines
                loop["source_file"] = Path(src_name).name if src_name else None
                d["hot_loop"] = loop
            dispatches.append(d)
        rec["dispatches"] = dispatches
        out.append(rec)
    return out


def _summarize(entry: dict) -> None:
    ds = [d for e in entry.get("elves", []) for d in e["dispatches"]]
    entry["dispatch_count"] = len(ds)
    entry["counts_match"] = sum(1 for d in ds if d.get("counts_match"))
    entry["size_checks_pass"] = sum(1 for d in ds if d.get("size_checks_pass"))


def inspect_kernel(shape: Shape, target: str, variant: str | None) -> dict:
    entry: dict = {"shape": shape.name, "target": target, "variant": variant or "cross_vec"}
    try:
        if target == "host":
            r = compile_variant(shape, VARIANTS[variant], extra=DEBUG)
        else:
            r = compile_kernel(shape, CROSS[target], tag=f"elf_{target}", extra=DEBUG)
        if not r.ok:
            entry["error"] = r.error
            return entry
        entry["elves"] = inspect_dump(r.dump_dir)
    except Exception as e:  # keep going: one bad kernel must not hide the rest
        entry["error"] = f"{type(e).__name__}: {e}"
    _summarize(entry)
    return entry


def inspect_harness() -> Optional[dict]:
    """The statically linked RISC-V harness from riscv.py (GCC-built EXEC)."""
    from .common import BUILD
    exes = sorted((BUILD / "riscv").glob("rv64gcv_*/harness")) if (BUILD / "riscv").exists() else []
    if not exes:
        return None
    exe = exes[0]
    hdr = elf_header(exe)
    tabs = symbol_tables(exe)
    disp = [s for s in tabs.get(".symtab", []) if s["type"] == "FUNC" and "_dispatch_" in s["name"]]
    rec = {"file": str(exe.relative_to(BUILD)), "elf": hdr,
           "symtab_entries": len(tabs.get(".symtab", [])),
           "dispatch_symbols": [{"name": s["name"], "bytes": s["size"], "bind": s["bind"]} for s in disp]}
    if disp:
        insns, tool = disassemble(exe, "riscv64", symbol=disp[0]["name"])
        rec["objdump_tool"] = tool
        rec["dispatch_counts"] = {k: v for k, v in count(insns, "riscv64").items()
                                  if k in CHECK_KEYS or k == "instructions"}
    return rec


def host_isa() -> str:
    m = platform.machine().lower()
    return {"amd64": "x86_64", "arm64": "aarch64"}.get(m, m)


def default_targets() -> list[str]:
    """The host, plus every cross target that isn't the host's own ISA."""
    return ["host", *(t for t in CROSS if t != host_isa())]


def run_all(shapes: list[Shape] | None = None, targets: list[str] | None = None,
            variants: list[str] | None = None) -> dict:
    shapes = shapes or DEFAULT_SHAPES
    targets = targets or default_targets()
    res: dict = {"tools": tool_paths(), "kernels": []}
    for s in shapes:
        for t in targets:
            for v in (variants or HOST_VARIANTS) if t == "host" else [None]:
                res["kernels"].append(inspect_kernel(s, t, v))
    res["riscv_harness"] = inspect_harness()
    ks = [k for k in res["kernels"] if "error" not in k]
    res["summary"] = {
        "kernels": len(res["kernels"]), "kernels_ok": len(ks),
        "dispatches": sum(k["dispatch_count"] for k in ks),
        "counts_match": sum(k["counts_match"] for k in ks),
        "size_checks_pass": sum(k["size_checks_pass"] for k in ks),
        "isas": sorted({e["elf"]["isa"] for k in ks for e in k["elves"] if e["elf"].get("isa")}),
    }
    write_json(RESULTS / "elf.json", res)
    return res
