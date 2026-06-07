#!/bin/sh
set -e

SRC_DIR=$(cd "$(dirname "$0")/.." && pwd)
TARGET_DIR=${1:-/opt/download-center/caddy/site/aria-official}

echo "Deploying to: $TARGET_DIR"
mkdir -p "$TARGET_DIR"
cp "$SRC_DIR/index.html" "$TARGET_DIR/index.html"
echo "Done"
