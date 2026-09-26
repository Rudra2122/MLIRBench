"""Matmul kernel definitions and MLIR generation.

Every kernel is a single `linalg.fill` + `linalg.matmul` written directly in
MLIR, so the input IR is fully known. Optimization knobs are expressed either
as compiler flags (see variants.py) or as an explicit
`#iree_codegen.compilation_info` attached to the matmul, which overrides
IREE's tile-size heuristics with the exact tiling we want to test.
"""
from __future__ import annotations

from dataclasses import dataclass, asdict
from typing import Optional

DTYPE_BYTES = {"f32": 4}


@dataclass(frozen=True)
class Shape:
    M: int
    K: int
    N: int
    dtype: str = "f32"
    label: str = ""

    @property
    def name(self) -> str:
        return f"{self.M}x{self.K}x{self.N}"

    @property
    def display(self) -> str:
        return f"{self.name} ({self.label})" if self.label else self.name

    @property
    def flops(self) -> int:
        return 2 * self.M * self.K * self.N

    @property
    def compulsory_bytes(self) -> int:
        """Minimum traffic: read A and B once, write C once."""
        b = DTYPE_BYTES[self.dtype]
        return (self.M * self.K + self.K * self.N + self.M * self.N) * b

    @property
    def working_set_bytes(self) -> int:
        return self.compulsory_bytes

    @property
    def operational_intensity(self) -> float:
        return self.flops / self.compulsory_bytes

    def to_dict(self) -> dict:
        d = asdict(self)
        d.update(name=self.name, flops=self.flops, compulsory_bytes=self.compulsory_bytes,
                 operational_intensity=self.operational_intensity)
        return d


# Square sweep traces the roofline as OI grows ~ n/6.
SQUARE = [Shape(n, n, n, label="square") for n in (64, 128, 256, 512, 1024)]
# Rectangular shapes lifted from transformer inference (hidden=768/4096).
ML = [
    Shape(128, 768, 768, label="attn proj, 128 tok"),
    Shape(128, 768, 3072, label="FFN up, 128 tok"),
    Shape(128, 3072, 768, label="FFN down, 128 tok"),
    Shape(32, 4096, 4096, label="decode, batch 32"),
    Shape(1, 4096, 4096, label="decode GEMV, batch 1"),
]
ALL = SQUARE + ML
ABLATION = [Shape(128, 128, 128, label="square"), Shape(512, 512, 512, label="square"),
            Shape(1024, 1024, 1024, label="square"), ML[1], ML[4]]
TUNE = [Shape(128, 128, 128, label="square"), Shape(512, 512, 512, label="square"),
        Shape(1024, 1024, 1024, label="square"), ML[1], ML[3], ML[4]]


def parse_shape(s: str) -> Shape:
    m, k, n = (int(x) for x in s.lower().split("x"))
    for known in ALL:
        if (known.M, known.K, known.N) == (m, k, n):
            return known
    return Shape(m, k, n)


@dataclass(frozen=True)
class TileConfig:
    """Explicit two-level tiling for IREE's CPUDoubleTilingExpert pipeline.

    distribution (tm, tn): cache-level tile, one workgroup per tile.
    vector (vm, vn, vk): register-level tile that becomes one vector.contract;
      vm x vn is the accumulator block held in registers, vk the K unroll.
    """
    tm: int
    tn: int
    vm: int
    vn: int
    vk: int
    pipeline: str = "CPUDoubleTilingExpert"

    @property
    def key(self) -> str:
        return f"d{self.tm}x{self.tn}_v{self.vm}x{self.vn}x{self.vk}"

    def lowering_config(self) -> str:
        if self.pipeline in ("CPUDefault", "TransformDialectCodegen"):
            return f"distribution = [{self.tm}, {self.tn}, 0]"
        return (f"distribution = [{self.tm}, {self.tn}, 0], "
                f"vector_common_parallel = [{self.vm}, {self.vn}, 0], "
                f"vector_reduction = [0, 0, {self.vk}]")


def compilation_info(cfg: TileConfig) -> str:
    pipe = cfg.pipeline
    if pipe == "TransformDialectCodegen":  # hand-written schedule, see schedules/
        pipe += " codegen_spec = @mlirbench_matmul"
    return (f"#config = #iree_cpu.lowering_config<{cfg.lowering_config()}>\n"
            f"#translation = #iree_codegen.translation_info<pipeline = {pipe}>\n"
            f"#ci = #iree_codegen.compilation_info<lowering_config = #config, "
            f"translation_info = #translation>\n")


def matmul_mlir(shape: Shape, tile: Optional[TileConfig] = None) -> str:
    t = shape.dtype
    a, b, c = (f"tensor<{shape.M}x{shape.K}x{t}>", f"tensor<{shape.K}x{shape.N}x{t}>",
               f"tensor<{shape.M}x{shape.N}x{t}>")
    header = compilation_info(tile) if tile else ""
    attr = " {compilation_info = #ci}" if tile else ""
    return (f"{header}func.func @matmul(%A: {a}, %B: {b}) -> {c} {{\n"
            f"  %init = tensor.empty() : {c}\n"
            f"  %cst = arith.constant 0.0 : {t}\n"
            f"  %filled = linalg.fill ins(%cst : {t}) outs(%init : {c}) -> {c}\n"
            f"  %r = linalg.matmul{attr} ins(%A, %B : {a}, {b}) outs(%filled : {c}) -> {c}\n"
            f"  return %r : {c}\n}}\n")
