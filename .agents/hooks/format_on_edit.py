#!/usr/bin/env python3
"""Hook PostToolUse: formatea el archivo que el agente acaba de editar.

Recibe el payload de Antigravity por stdin y siempre devuelve {} por stdout.
Nunca bloquea al agente: si el formateador no está instalado o falla, no hace nada.
"""
import json
import os
import shutil
import subprocess
import sys

JS_EXTENSIONS = {".ts", ".tsx", ".js", ".jsx", ".css", ".json"}


def find_prettier(roots):
    for root in roots:
        candidate = os.path.join(root, "frontend", "node_modules", ".bin", "prettier")
        if os.path.exists(candidate):
            return candidate
    return None


def main():
    try:
        data = json.load(sys.stdin)
    except Exception:
        print("{}")
        return

    if data.get("error"):
        print("{}")
        return

    args = (data.get("toolCall") or {}).get("args") or {}
    path = args.get("TargetFile") or ""
    roots = data.get("workspacePaths") or []
    ext = os.path.splitext(path)[1].lower()

    cmd = None
    if ext in JS_EXTENSIONS and "/frontend/" in path:
        prettier = find_prettier(roots)
        if prettier:
            cmd = [prettier, "--write", path]
    elif ext == ".py" and "/backend/" in path and shutil.which("ruff"):
        cmd = ["ruff", "format", path]

    if cmd:
        try:
            subprocess.run(cmd, capture_output=True, timeout=50, check=False)
        except Exception:
            pass

    print("{}")


if __name__ == "__main__":
    main()
