#!/usr/bin/env bash
set -euo pipefail

# Creates GitHub issues from markdown files in .github/ISSUES
# Requires the GitHub CLI (`gh`) to be installed and authenticated.

ISSUES_DIR=".github/ISSUES"

if ! command -v gh >/dev/null 2>&1; then
  echo "gh CLI not found. Install GitHub CLI and authenticate (gh auth login)."
  exit 1
fi

for file in "$ISSUES_DIR"/*.md; do
  # Extract title from first line (remove leading #)
  title=$(sed -n '1p' "$file" | sed 's/^# *//')
  echo "Creating issue: $title"
  gh issue create --title "$title" --body-file "$file" --label enhancement || {
    echo "Failed to create issue for $file"
  }
done

echo "Done."
