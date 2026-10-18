---
description: "Apply the github-actions skill to create the cross-platform CI workflow."
agent: "build-engineer"
---

Read and follow `.github/skills/github-actions/SKILL.md`.

Create `.github/workflows/ci.yml` with CI jobs for `ubuntu-latest`, `windows-latest`, and `macos-latest`. Configure Windows to execute `ci.bat` and Ubuntu/macOS to execute `bash ci.sh`.

Preserve existing user changes. Report whether the workflow was created successfully.