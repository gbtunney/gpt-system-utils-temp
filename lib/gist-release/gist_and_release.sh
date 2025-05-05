#!/bin/zsh

# ============================================
# Gist Creation Script for SSH + Diagnostics Docs
# Version: 1.1.0
# Last Updated: 2025-05-05
# ============================================

# Gist Metadata
MAKE_PUBLIC=true  # Set to false to create a secret (private) gist
DESCRIPTION="SSH Key Overview and System Diagnostics Script (v1.1.0)"
GIST_FILES=(
  "system_diagnostics_v1.1.0.sh"
  "ssh_key_overview_v1.2.0.md"
)

# Create the Gist
if gh auth status &>/dev/null; then
  echo "✅ GitHub CLI authenticated. Creating gist..."
  if [ "$MAKE_PUBLIC" = true ]; then
    VISIBILITY_FLAG="--public"
  else
    VISIBILITY_FLAG=""
  fi

  gh gist create "${GIST_FILES[@]}" \
    --filename "system_diagnostics_v1.1.0.sh" \
    --filename "ssh_key_overview_v1.2.0.md" \
    --desc "$DESCRIPTION" \
    $VISIBILITY_FLAG \
    --web
else
  echo "❌ GitHub CLI is not authenticated. Run 'gh auth login' and try again."
fi

# ============================================
# GitHub Release Script for SSH Diagnostic Tools
# Version: 1.0.0
# Last Updated: 2025-05-05
# ============================================

REPO="your-username/your-repo"  # <-- UPDATE THIS
TAG="v1.1.0"
TITLE="SSH Diagnostic Toolkit v1.1.0"
BODY="Includes SSH key management markdown, a colored diagnostic shell script, and a Gist publishing utility."
ZIP_FILE="ssh_gist_bundle_v1.1.0.zip"

if gh auth status &>/dev/null; then
  echo "✅ GitHub CLI authenticated. Creating release..."
  gh release create "$TAG" "$ZIP_FILE" \
    --repo "$REPO" \
    --title "$TITLE" \
    --notes "$BODY"
else
  echo "❌ GitHub CLI not authenticated. Run 'gh auth login' and try again."
fi
