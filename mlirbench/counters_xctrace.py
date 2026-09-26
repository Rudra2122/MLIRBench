"""macOS hardware counters via Instruments' command line (`xcrun xctrace`).

No root required, but it needs full Xcode (not just the Command Line Tools)
and an Instruments template you create once in the GUI; see docs/MACOS.md.

Method, same differencing as the Linux perf backend: record
iree-benchmark-module for n1 and for n2 invocations, sum the counter samples
belonging to that process in each trace, per-call = (C[n2] - C[n1]) / (n2 - n1).

Caveat, stated plainly: the XML that `xctrace export` produces for the CPU
Counters instrument is not a documented, stable format, and I could not run
Instruments while writing this. The parser is therefore defensive:

* it finds counter tables by schema name (anything containing "counter"/"pmc"),
* it resolves xctrace's id/ref de-duplication,
* it keeps only rows whose process is iree-benchmark-module,
* it detects whether samples are per-interval deltas or cumulative snapshots,
* it maps value positions to event names from MLIRBENCH_XCTRACE_EVENTS, or
  failing that from Apple event names found in the trace's table of contents.

It always saves the raw XML under results/xctrace_debug/ and records which
interpretation it used. Run `python -m mlirbench counters --selftest
--counter-backend xctrace` before trusting any number: it checks that counts
double when the work doubles.
"""
from __future__ import annotations

import os
import platform
import re
import shutil
import subprocess
import xml.etree.ElementTree as ET
from pathlib import Path
from typing import Optional

from .bench import input_files
from .common import BUILD, RESULTS, find_tool
from .kernels import Shape

DEBUG = RESULTS / "xctrace_debug"


def template() -> Optional[str]:
    return os.environ.get("MLIRBENCH_XCTRACE_TEMPLATE")


def availability() -> dict:
    if platform.system() != "Darwin":
        return {"available": False, "reason": "xctrace backend is macOS-only"}
    if not shutil.which("xcrun"):
        return {"available": False, "reason": "xcrun not found (install Xcode)"}
    p = subprocess.run(["xcrun", "xctrace", "version"], capture_output=True, text=True)
    if p.returncode != 0:
        return {"available": False,
                "reason": "xctrace not available: install full Xcode and run "
                          "`sudo xcode-select -s /Applications/Xcode.app`"}
    if not template():
        return {"available": False,
                "reason": "set MLIRBENCH_XCTRACE_TEMPLATE to your saved CPU Counters "
                          ".tracetemplate (see docs/MACOS.md)"}
    return {"available": True, "backend": "xctrace", "xctrace": p.stdout.strip(),
            "template": template()}


def _record(cmd: list[str], out: Path) -> None:
    if out.exists():
        shutil.rmtree(out)
    rec = ["xcrun", "xctrace", "record", "--template", template(), "--output", str(out),
           "--no-prompt", "--launch", "--", *cmd]
    p = subprocess.run(rec, capture_output=True, text=True, timeout=3600)
    if p.returncode != 0 or not out.exists():
        raise RuntimeError(f"xctrace record failed: {p.stderr[-1500:]}")


def _export(trace: Path, args: list[str]) -> str:
    p = subprocess.run(["xcrun", "xctrace", "export", "--input", str(trace), *args],
                       capture_output=True, text=True, timeout=1800)
    if p.returncode != 0:
        raise RuntimeError(f"xctrace export failed: {p.stderr[-1500:]}")
    return p.stdout


def _known_event_names() -> set[str]:
    from .counters_kperf import list_events_from_plist
    names: set[str] = set()
    for v in list_events_from_plist().values():
        if isinstance(v, list):
            names.update(v)
    return names


def _event_names(toc: str, table_xml: str, width: int) -> tuple[list[str], str]:
    env = os.environ.get("MLIRBENCH_XCTRACE_EVENTS")
    if env:
        names = [e.strip() for e in env.split(",") if e.strip()]
        return names[:width] + [f"pmc{i}" for i in range(len(names), width)], "MLIRBENCH_XCTRACE_EVENTS"
    known = _known_event_names()
    for src, text in (("table", table_xml[:200000]), ("toc", toc)):
        found = []
        for tok in re.findall(r"\b[A-Z][A-Z0-9_]{3,}\b", text):
            if tok in known and tok not in found:
                found.append(tok)
        if len(found) >= width:
            return found[:width], f"Apple event names found in trace {src}, in order"
    return [f"pmc{i}" for i in range(width)], "unnamed (set MLIRBENCH_XCTRACE_EVENTS)"


def _resolve(root: ET.Element) -> dict[str, ET.Element]:
    return {e.get("id"): e for e in root.iter() if e.get("id") is not None}


def _deref(e: ET.Element, ids: dict) -> ET.Element:
    return ids.get(e.get("ref"), e) if e.get("ref") is not None else e


def _row_text(e: ET.Element, ids: dict) -> str:
    """All fmt/text of an element and its (dereferenced) descendants."""
    e = _deref(e, ids)
    parts = [e.get("fmt") or "", e.text or ""]
    for ch in e:
        parts.append(_row_text(ch, ids))
    return " ".join(p for p in parts if p)


def parse_counter_table(xml: str, process_match: str) -> dict:
    root = ET.fromstring(xml)
    ids = _resolve(root)
    series: dict[str, list[list[int]]] = {}
    for row in root.iter("row"):
        vals, thread = None, "?"
        matched = False
        for col in row:
            c = _deref(col, ids)
            tag = c.tag.lower()
            if "pmc" in tag or "counter" in tag:
                txt = (c.text or c.get("fmt") or "").strip()
                nums = re.findall(r"-?\d+", txt.replace(",", ""))
                if nums:
                    vals = [int(n) for n in nums]
            if tag in ("thread", "process"):
                t = _row_text(c, ids)
                if tag == "thread":
                    thread = t
                if process_match in t:
                    matched = True
        if vals is not None and matched:
            series.setdefault(thread, []).append(vals)
    if not series:
        return {"width": 0, "totals": [], "mode": "no rows for process"}
    width = max(len(v) for s in series.values() for v in s)
    monotonic = all(
        all(s[i][k] <= s[i + 1][k] for i in range(len(s) - 1) for k in range(min(len(s[i]), len(s[i + 1]))))
        for s in series.values() if len(s) > 1)
    multi = any(len(s) > 1 for s in series.values())
    totals = [0] * width
    for s in series.values():
        for k in range(width):
            col = [v[k] for v in s if k < len(v)]
            if not col:
                continue
            totals[k] += (col[-1] - col[0]) if (monotonic and multi) else sum(col)
    mode = "cumulative snapshots: last-first per thread" if (monotonic and multi) else "per-sample deltas: summed"
    return {"width": width, "totals": totals, "mode": mode, "threads": len(series),
            "rows": sum(len(s) for s in series.values())}


def _counts_for(cmd: list[str], tag: str) -> tuple[dict, dict]:
    DEBUG.mkdir(parents=True, exist_ok=True)
    trace = BUILD / "xctrace" / f"{tag}.trace"
    trace.parent.mkdir(parents=True, exist_ok=True)
    _record(cmd, trace)
    toc = _export(trace, ["--toc"])
    (DEBUG / f"{tag}_toc.xml").write_text(toc)
    schemas = [s for s in re.findall(r'schema="([^"]+)"', toc) if re.search(r"counter|pmc", s, re.I)]
    if not schemas:
        allschemas = sorted(set(re.findall(r'schema="([^"]+)"', toc)))
        raise RuntimeError(f"no counter tables in trace; schemas present: {allschemas}")
    proc = Path(cmd[0]).name
    for schema in dict.fromkeys(schemas):
        xml = _export(trace, ["--xpath", f'/trace-toc/run[@number="1"]/data/table[@schema="{schema}"]'])
        (DEBUG / f"{tag}_{schema}.xml").write_text(xml[:20_000_000])
        parsed = parse_counter_table(xml, proc)
        if parsed["width"]:
            names, how = _event_names(toc, xml, parsed["width"])
            return dict(zip(names, map(float, parsed["totals"]))), {
                "schema": schema, "names_from": how, **{k: v for k, v in parsed.items() if k != "totals"}}
    raise RuntimeError(f"counter tables {schemas} had no rows for process {proc}")


def collect(vmfb: Path, shape: Shape, n1: int, n2: int, device: str) -> dict:
    a, b = input_files(shape)
    base = [find_tool("iree-benchmark-module"), f"--module={vmfb}", f"--device={device}",
            "--function=matmul", f"--input=@{a}", f"--input=@{b}", "--benchmark_repetitions=1"]
    c1, info1 = _counts_for(base + [f"--benchmark_min_time={n1}x"], f"{shape.name}_{n1}")
    c2, info2 = _counts_for(base + [f"--benchmark_min_time={n2}x"], f"{shape.name}_{n2}")
    per = {k: (c2[k] - c1.get(k, 0.0)) / (n2 - n1) for k in c2}
    return {"per_invocation": per, "parse": info2,
            "parse_consistent": info1.get("mode") == info2.get("mode")}


def selftest() -> dict:
    av = availability()
    if not av["available"]:
        return {"ok": False, **av}
    py = shutil.which("python3") or "python3"
    loop = "x=0\nfor i in range({n}): x+=i"
    c1, i1 = _counts_for([py, "-c", loop.format(n=3_000_000)], "selftest_1x")
    c2, i2 = _counts_for([py, "-c", loop.format(n=6_000_000)], "selftest_2x")
    # interpreter start-up is the same in both; the loop part doubles
    c0, _ = _counts_for([py, "-c", "pass"], "selftest_0x")
    ratio = {k: (c2[k] - c0.get(k, 0)) / max(c1[k] - c0.get(k, 0), 1) for k in c2}
    # judge on the high-volume counters (cycles/instructions-like): small
    # counters such as mispredicts are too noisy for a 2x check
    vols = sorted(((c2[k] - c0.get(k, 0), r) for k, r in ratio.items()), reverse=True)
    top = [r for v, r in vols[:2] if v > 0]
    ok = bool(top) and all(1.5 < r < 2.6 for r in top)
    return {"ok": ok, "scaling_2x_work": ratio, "parse": i2,
            "note": "every counter should be ~2.0 for 2x the loop; raw XML is in results/xctrace_debug/"}
