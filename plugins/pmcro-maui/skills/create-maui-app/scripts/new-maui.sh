#!/usr/bin/env bash
# Usage: new-maui.sh <ProjectName> [output-dir]
set -euo pipefail
NAME="${1:?project name required}"
OUT="${2:-.}"
dotnet new maui -n "$NAME" -o "$OUT/$NAME"
