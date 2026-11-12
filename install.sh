#!/usr/bin/env bash
# Masterbatch Lead Gen — one-line installer
# Copies the skill into the user's WorkBuddy skills directory.
set -euo pipefail

SKILL_NAME="masterbatch-lead-gen"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Target directory: ~/.workbuddy/skills/<skill-name>
TARGET="${WORKBUDDY_SKILLS_DIR:-$HOME/.workbuddy/skills/$SKILL_NAME}"

echo "Installing '${SKILL_NAME}' skill..."
mkdir -p "$TARGET"

# Copy everything except .git and this installer
rsync -a --delete \
  --exclude '.git' \
  --exclude '.gitignore' \
  "$SCRIPT_DIR/" "$TARGET/" 2>/dev/null || \
  cp -r "$SCRIPT_DIR/." "$TARGET/"

echo ""
echo "✅ Installed to: $TARGET"
echo ""
echo "Now open WorkBuddy and say:"
echo "  \"Use the masterbatch lead gen skill to find Vietnamese customers.\""
echo ""
echo "You can also copy the skill to another assistant (Claude/Cursor):"
echo "  cp -r $TARGET <assistant-skills-dir>/"
