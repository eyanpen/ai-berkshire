#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST="${CLAUDE_COMMANDS_DIR:-$HOME/.claude/commands}"

mkdir -p "$DEST/tools"
cp "$ROOT"/skills/*.md "$DEST"/
cp "$ROOT"/tools/*.py "$ROOT"/tools/*.sh "$DEST"/tools/
chmod +x "$DEST"/tools/*.py "$DEST"/tools/*.sh 2>/dev/null || true

echo "Installed Claude Code commands to $DEST"
