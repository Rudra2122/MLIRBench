# Reading the shipped binary: ELF, symbol tables, objdump and DWARF

`asm.py` reads the `.s` text IREE prints before it assembles anything. That is what the
compiler *meant* to emit. `mlirbench/elfinspect.py` reads what IREE actually *ships*: the
ELF objects it links, with standard binutils and LLVM tools. Then it checks that the two
views agree.

```bash
python -m mlirbench elf                       # host + the other two ISAs (cross-compiled), 128³ and 512³
python -m mlirbench elf --target riscv64 --shape 64x96x80
python -m mlirbench report                    # adds the "Binary level" section to REPORT.md
```

Output: `results*/elf.json` and a section in `REPORT.md`.

---

## What each step does

| Step | Tool | What I read |
|---|---|---|
| Compile | `iree-compile --iree-llvmcpu-debug-symbols=true --iree-hal-dump-executable-files-to=DIR` | The dump holds the relocatable object (`*.o`), the linked embedded-ELF shared object (`*.so`), the `.s` and the configured MLIR for each executable. `--iree-hal-dump-executable-files-to` is the meta flag that includes `--iree-hal-dump-executable-binaries-to` and `-intermediates-to`. |
| ELF header | `readelf -h -W` | Class (ELF64), type (`REL` for the `.o`, `DYN` for the `.so`, `EXEC` for the static RISC-V harness) and machine (`X86-64`, `AArch64`, `RISC-V`). |
| Sections | `readelf -S -W` | Sizes of `.text`, `.rodata`, `.data.rel.ro`, `.dynsym`, `.symtab` and the `.debug_*` sections. |
| Symbol tables | `readelf -s -W`, `nm -S --defined-only` | `.symtab` / `.dynsym` entries: name, size, type, binding. Read twice, by two tools. |
| Disassembly | `objdump -d --disassemble=<dispatch>` | The dispatch function from the `.o`, classified with the same rules `asm.py` uses. It tries the GNU cross objdump first (`aarch64-linux-gnu-objdump`, `riscv64-linux-gnu-objdump`), then `objdump`, then `llvm-objdump`. |
| DWARF | `llvm-dwarfdump --debug-info`, `--debug-line` | `DW_TAG_subprogram` gives the dispatch's address range in the linked `.so`. The line table maps addresses to lines of the configured MLIR. |
| Hot loop | objdump on the `.so` address range | Backward branches inside the function are loops. The one with the most vector FMAs is the hot loop, and its addresses are looked up in `.debug_line`. |

---

## Checks, and what they found

### 1. Static counts: `.s` vs the ELF

For every dispatch function, the FMA, vector width, vector load/store, spill (stack access)
and `vsetvl` counts that `asm.py` gets from the `.s` must equal the counts from objdump on
the `.o`. They do, for all 22 dispatch functions: x86-64 (generic and Emerald Rapids
builds, plain and packed / ukernel variants), AArch64 (NEON) and RISC-V (RVV), at 128³ and 512³.

Raw instruction totals are reported but not gated. On x86-64 they differ by 2 because the
binary has two alignment NOPs inside the function, where the `.s` only has a `.p2align`
directive. Mnemonic spelling differs too (`movq` in the `.s`, `mov` from objdump), which is
why classification is by pattern, not by exact name.

On AArch64 (−3) and RISC-V (+8), a few scalar address-arithmetic instructions differ
between the `.s` and the `.o`: RISC-V has +4 `add`, +2 `slli`, +2 `li`, +2 `or`, −1 `ld`,
−1 `sd`, and AArch64 has −1 each of `add`, `ldr` and `str`. Every vector, FMA, vector
load/store and spill count still matches. I haven't tracked down why the scalar code differs.
My guess is that IREE emits the `.s` and the object file in separate codegen passes, but I
haven't confirmed it.

### 2. Function size: symbol table vs DWARF

The dispatch's `st_size` in the `.o` symbol table, its size from `nm -S`, the byte span
objdump disassembles, and `DW_AT_high_pc − DW_AT_low_pc` in the linked `.so` all agree in
22/22 cases. For example, the 128³ `vec_heuristic` dispatch is 1,755 bytes in all four.

### 3. What the linked `.so` exports

The linked `.so` keeps exactly one function symbol in `.dynsym` and `.symtab`:
`iree_hal_executable_library_query`. The dispatch functions are not in its symbol tables
at all. The runtime calls the query function, which returns a table of function pointers,
so the dispatch never needs a symbol. Inside the linked `.so`, only DWARF still has its name
and address range, which is why the hot-loop lookup goes through `DW_TAG_subprogram`.

The statically linked RISC-V harness built by `riscv.py` with `riscv64-linux-gnu-gcc` is
the opposite case. It is an `EXEC`, and `.symtab` keeps the dispatch as a `LOCAL FUNC`
symbol (588 bytes at 128³), so objdump can disassemble it by name.

### 4. The linker drops the runtime helpers, and that corrected one of my numbers

The `.o` also holds 33–36 `FUNC` symbols of runtime helpers that IREE links in as bitcode:
`expf`, `powf`, `fmaf`, `ldexpf`, f16 conversions. After linking, `.text` is 608–2,033
bytes, down from 4.2–5.8 KB of `.text*` in the `.o`, because nothing calls those helpers.

`asm.py` used to count every function in the `.s`, helpers included. On x86 the helpers
contribute exactly 22 vector stack accesses, 13 scalar FMAs and 71 scalar FP ops. So:

- The "176–404 stack accesses vs a baseline of 22" quoted for the spilling 64-accumulator
  tiles was really **154–382 in the dispatch vs 0** for the dispatch of every non-spilling tile.
  objdump on the `.o` gives the same 154 and 382.
- The scalar RISC-V build has **256** `fmadd.s` in the dispatch. 269 was the whole-file count.

`asm.analyze_dir` now also reports a `dispatch_only` block. The existing whole-file keys are
unchanged, so earlier results files stay readable.

### 5. DWARF: how much of the hot loop maps back to an MLIR op

IREE's DWARF points at the configured MLIR (`configured_module_*.mlir` in the dump), not at C.

- **Packed variants:** 100% of the hot loop's instructions map to the op they came from:
  `linalg.pack` (line 14/15), `linalg.mmt4d` (line 20), `linalg.unpack` (line 15).
- **The matmul dispatch (`vec_heuristic`, `cross_vec`):** only 10–39% of the hot loop maps to
  `linalg.matmul` (line 18). The rest, including all 128 AVX-512 FMAs on x86 and all 64
  `fmla` on AArch64, carries only the function's own location (line 1 = `DW_AT_decl_line`).
  The vector.contract → FMA lowering drops the op location, so a debugger or profiler would
  attribute the FMAs to the function, not to the matmul op.

---

## Concepts this relies on

- **`.symtab` vs `.dynsym`:** `.symtab` is the full static symbol table, used by the linker
  and by tools like `nm`. It isn't loaded at run time and can be stripped. `.dynsym` is the
  subset the dynamic loader needs (exported and imported symbols). It lives in an
  allocated segment and survives `strip`. Here `.dynsym` holds just the query function.
- **`.text`, `.rodata`, `.data.rel.ro`:** `.text` is executable code. `.rodata` is read-only
  constants (FP constant pools, the `.LCPI*` labels; in the `.o` also the `exp`/`pow` lookup tables). `.data.rel.ro` is data
  that needs relocation at load time and is then made read-only. IREE's export table of
  function pointers (`iree_hal_executable_library_query_v0*`) is relocated data of this kind.
- **DWARF DIE:** a Debugging Information Entry is a node in the `.debug_info` tree with a tag
  (`DW_TAG_compile_unit`, `DW_TAG_subprogram`, `DW_TAG_base_type`) and attributes
  (`DW_AT_name`, `DW_AT_low_pc`, `DW_AT_high_pc`, `DW_AT_decl_line`).
- **`.debug_line`:** a compressed state machine that expands into a table of rows: address,
  file, line, column and flags (`is_stmt`, `prologue_end`, `end_sequence`). Each row covers
  the addresses up to the next row. Line 0 means "no source location".
- **Why `-O3` makes stepping jump around:** the optimizer reorders, interleaves, hoists and
  merges instructions from different source lines, unrolls loops, and keeps values only in
  registers. So consecutive addresses map to non-consecutive lines, some lines have no
  instructions, and variables show as "optimized out". The 10–39% figure above is the same
  effect, measured.

---

## Limits

- Static analysis only: what the binary contains, not what the CPU retires. Retired counts come from `counters.py`.
- I don't run a debugger session on the IREE output. The embedded ELF is loaded by IREE's own loader, not `ld.so`. The DWARF is read with `llvm-dwarfdump`.
- The hot loop is found from backward branches inside one function. It's the loop with the most FMAs, not a profiled hotspot.
- On macOS, install LLVM's tools (`brew install llvm`). `elfinspect.py` looks in `/opt/homebrew/opt/llvm/bin` for `llvm-readelf`, `llvm-objdump` and `llvm-dwarfdump`.
