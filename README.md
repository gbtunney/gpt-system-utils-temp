# @gbt/system-utils

A modular shell-based toolkit for SSH diagnostics, Gist publishing, and GitHub CLI automation.  
🚧 Name is provisional and subject to change.

> **This is an experiment and test!**

## 📁 Structure

- `lib/diagnostics/` → system diagnostics script
- `lib/gist-release/` → create Gist + GitHub release
- `lib/gist-update/` → update existing Gists
- `lib/ssh-overview/` → key documentation and test reference

## 🧪 Usage

```bash
pnpm run test         # Run system diagnostics
pnpm run publish:gist # Publish to Gist and GitHub release
pnpm run update:gist  # Update existing Gist
```
