
**`.github/skills/github-actions/SKILL.md`**
```markdown
---
name: github-actions
description: Generate a GitHub Actions workflow that runs the project CI on Linux, Windows, and macOS.
---

# GitHub Actions

Create `.github/workflows/ci.yml` with a workflow that runs on pushes and pull requests.

Use a matrix with these runners:

- `ubuntu-latest`
- `windows-latest`
- `macos-latest`

Set up Java 17 and Maven on each runner. Run `ci.bat` on Windows and `bash ci.sh` on Ubuntu and macOS.

Validate the workflow configuration and run any available CI checks. Stop and report if a check fails; do not claim CI works unless the workflow is configured for all three platforms.