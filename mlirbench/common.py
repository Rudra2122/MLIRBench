"""Shared paths, subprocess helpers and tool discovery."""
from __future__ import annotations

import json
import os
import platform
import shutil
import subprocess
import time
from pathlib import Path
from typing import Any, Sequence

ROOT = Path(__file__).resolve().parent.parent
RESULTS = Path(os.environ.get("MLIRBENCH_RESULTS", ROOT / "results"))
BUILD = Path(os.environ.get("MLIRBENCH_BUILD", ROOT / "build"))


class ToolMissing(RuntimeError):
    pass


def find_tool(name: str, env_var: str | None = None) -> str:
    """Locate an executable, honouring an optional override env var."""
    if env_var and os.environ.get(env_var):
        return os.environ[env_var]
    path = shutil.which(name)
    if path:
        return path
    if name in ("iree-compile", "iree-opt"):
        try:  # pip wheels ship the binaries inside the package
            import iree.compiler.tools.binaries as b  # type: ignore
            return b.find_tool(name)
        except Exception:
            pass
    if name in ("iree-benchmark-module", "iree-run-module"):
        try:
            import iree.runtime as rt  # noqa: F401
            libs = Path(rt.__file__).resolve().parent.parent / "_runtime_libs" / name
            if libs.exists():
                return str(libs)
        except Exception:
            pass
    raise ToolMissing(name)


def run(cmd: Sequence[str], timeout: float | None = 600, check: bool = False,
        env: dict | None = None, cwd: str | Path | None = None) -> subprocess.CompletedProcess:
    proc = subprocess.run([str(c) for c in cmd], capture_output=True, text=True,
                          timeout=timeout, env=env, cwd=cwd)
    if check and proc.returncode != 0:
        raise RuntimeError(f"command failed ({proc.returncode}): {' '.join(map(str, cmd))}\n"
                           f"{proc.stderr[-4000:]}")
    return proc


def write_json(path: Path, obj: Any) -> Path:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(obj, indent=2, default=str))
    return path


def read_json(path: Path, default: Any = None) -> Any:
    if not Path(path).exists():
        return default
    return json.loads(Path(path).read_text())


def host_info() -> dict:
    info = {"machine": platform.machine(), "system": platform.system(),
            "python": platform.python_version(), "timestamp": time.strftime("%Y-%m-%dT%H:%M:%S")}
    try:
        if platform.system() == "Linux":
            for line in Path("/proc/cpuinfo").read_text().splitlines():
                if line.startswith("model name"):
                    info["cpu_model"] = line.split(":", 1)[1].strip()
                    break
            info["hypervisor"] = "hypervisor" in Path("/proc/cpuinfo").read_text()
        elif platform.system() == "Darwin":
            info["cpu_model"] = run(["sysctl", "-n", "machdep.cpu.brand_string"]).stdout.strip()
    except Exception:
        pass
    try:
        info["iree_compile_version"] = run([find_tool("iree-compile"), "--version"]).stdout.strip()
    except Exception:
        pass
    return info


def fmt(x: float | None, digits: int = 2) -> str:
    if x is None:
        return "n/a"
    if isinstance(x, (int,)) and not isinstance(x, bool):
        return f"{x:,}"
    return f"{x:,.{digits}f}"
