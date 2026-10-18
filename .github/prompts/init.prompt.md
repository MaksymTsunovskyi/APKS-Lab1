---
description: "Orchestrate repository setup, project scaffolding, build configuration, CI workflow creation, and validation."
agent: "build-engineer"
---

Run these prompt tasks sequentially and in exactly this order:

1. `git-init` from `.github/prompts/git-init.prompt.md`
2. `create-project` from `.github/prompts/create-project.prompt.md`
3. `create-build` from `.github/prompts/create-build.prompt.md`
4. `create-actions` from `.github/prompts/create-actions.prompt.md`
5. `check` from `.github/prompts/check.prompt.md`

For each step, follow that prompt's instructions and wait for it to complete before starting the next. Stop immediately if any step fails; do not continue to later steps.

Never claim success unless the final `check` step outputs exactly `RESULT: PASS`.