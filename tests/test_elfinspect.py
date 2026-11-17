"""Parser tests for elfinspect.py (no IREE or binutils needed).

    python -m pytest tests/        or        python tests/test_elfinspect.py
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from mlirbench.asm import analyze_text, function_text  # noqa: E402
from mlirbench.elfinspect import hot_loop, line_of, parse_objdump  # noqa: E402

GNU_X86 = """
0000000000000000 <f>:
   0:	62 f1 7c 48 10 00    	vmovups (%rax),%zmm0
   6:	62 f2 7d 58 b8 4a 01 	vfmadd231ps 0x4(%rdx){1to16},%zmm0,%zmm1
   d:	62 f1 7c 48 11 4c 24 	vmovups %zmm1,0x40(%rsp)
  14:	01 
  15:	48 ff c1             	inc    %rcx
  18:	75 ec                	jne    6 <f+0x6>
  1a:	c3                   	ret
"""

LLVM_AARCH64 = """
0000000000000000 <f>:
       0: 3dc00000     \tldr\tq0, [x0]
       4: 4f801020     \tfmla\tv0.4s, v1.4s, v0.s[0]
       8: f1000421     \tsubs\tx1, x1, #0x1
       c: 54ffffc1     \tb.ne\t0x4 <f+0x4>
      10: d65f03c0     \tret
"""

GNU_RISCV = """
0000000000000000 <f>:
   0:	0207f007          	vle32.v	v0,(a5)
   4:	b2a5d457          	vfmacc.vf	v8,fa1,v10
   8:	17fd                	addi	a5,a5,-1
   a:	ffed                	bnez	a5,4 <f+0x4>
   c:	8082                	ret
"""


def test_x86_gnu_wrapped_encoding_and_loop():
    ins = parse_objdump(GNU_X86, "x86_64")
    assert [i["mn"] for i in ins] == ["vmovups", "vfmadd231ps", "vmovups", "inc", "jne", "ret"]
    assert ins[2]["size"] == 8  # 7 bytes + 1 on the continuation line
    loop = hot_loop(ins, "x86_64", 0, 0x1b)
    assert loop["vector_fma"] == 1 and loop["start"] == 6


def test_aarch64_llvm_objdump():
    ins = parse_objdump(LLVM_AARCH64, "aarch64")
    assert [i["mn"] for i in ins] == ["ldr", "fmla", "subs", "b.ne", "ret"]
    assert hot_loop(ins, "aarch64", 0, 0x14)["vector_fma"] == 1


def test_riscv_compressed_sizes():
    ins = parse_objdump(GNU_RISCV, "riscv64")
    assert [i["size"] for i in ins] == [4, 4, 2, 2, 2]
    assert hot_loop(ins, "riscv64", 0, 0xe)["vector_fma"] == 1


def test_line_table_lookup_per_sequence():
    tables = [{"files": {1: "a.mlir"}, "sequences": [[(0x10, 1), (0x20, 18), (0x40, 20)]]},
              {"files": {1: "b.mlir"}, "sequences": [[(0x40, 5), (0x50, 7)]]}]
    assert line_of(tables, 0x24) == (18, "a.mlir")
    assert line_of(tables, 0x44) == (5, "b.mlir")
    assert line_of(tables, 0x90) == (0, None)


def test_function_slice_excludes_helpers():
    s = "f_dispatch_0:\n\tvfmadd231ps %zmm0,%zmm1,%zmm2\n.Lfunc_end0:\nexpf:\n\tvmovups %zmm3,(%rsp)\n"
    assert analyze_text(function_text(s, "f_dispatch_0"), "x86_64").get("vec_stack_access", 0) == 0
    assert analyze_text(s, "x86_64")["vec_stack_access"] == 1


if __name__ == "__main__":
    for name, fn in list(globals().items()):
        if name.startswith("test_"):
            fn()
            print("ok", name)
