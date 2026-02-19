#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage: $0 --target <claude|codex|gemini>"
  exit 1
}

# Parse args
TARGET=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --target)
      TARGET="$2"
      shift 2
      ;;
    *)
      usage
      ;;
  esac
done

if [[ -z "$TARGET" ]]; then
  usage
fi

# Set destination directories based on target
case "$TARGET" in
  claude)
    COMMANDS_DEST="$HOME/.claude/commands"
    SKILLS_DEST="$HOME/.claude/skills"
    ;;
  codex)
    COMMANDS_DEST="$HOME/.codex/prompts"
    SKILLS_DEST="$HOME/.agents/skills"
    ;;
  gemini)
    COMMANDS_DEST=""
    SKILLS_DEST="$HOME/.gemini/skills"
    ;;
  *)
    echo "Error: target must be 'claude', 'codex', or 'gemini'"
    exit 1
    ;;
esac

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
COMMANDS_SRC="$REPO_DIR/commands"
SKILLS_SRC="$REPO_DIR/skills"

# Create destination directories
[[ -n "$COMMANDS_DEST" ]] && mkdir -p "$COMMANDS_DEST"
mkdir -p "$SKILLS_DEST"

# Copy commands (skip for gemini; for claude, skip commands that share a name with a skill)
COMMAND_COUNT=0
SKIPPED_COUNT=0
if [[ -n "$COMMANDS_DEST" ]]; then
  for f in "$COMMANDS_SRC"/*.md; do
    [[ -f "$f" ]] || continue
    name="$(basename "$f" .md)"
    if [[ "$TARGET" == "claude" && -d "$SKILLS_SRC/$name" ]]; then
      SKIPPED_COUNT=$((SKIPPED_COUNT + 1))
      continue
    fi
    cp "$f" "$COMMANDS_DEST/"
    COMMAND_COUNT=$((COMMAND_COUNT + 1))
  done
fi

# Copy skills
SKILL_COUNT=0
for d in "$SKILLS_SRC"/*/; do
  [[ -d "$d" ]] || continue
  cp -r "$d" "$SKILLS_DEST/"
  SKILL_COUNT=$((SKILL_COUNT + 1))
done

echo "Installed to target: $TARGET"
[[ -n "$COMMANDS_DEST" ]] && echo "  Commands: $COMMAND_COUNT → $COMMANDS_DEST"
echo "  Skills:   $SKILL_COUNT → $SKILLS_DEST"
