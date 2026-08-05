#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== Building frontend ==="
cd "$SCRIPT_DIR/TreesFrontend"
yarn build

echo ""
echo "=== Starting backend ==="
cd "$SCRIPT_DIR/TreesBackend"
deno task start
