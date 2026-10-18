---
description: "Check or initialize the Git repository, ensure required ignore rules, and show Git status."
agent: "build-engineer"
---

Check whether the current workspace folder is a Git repository by inspecting `git rev-parse --show-toplevel`.

- If it is not a repository, initialize it with `git init`. Do not commit or alter existing history.
- Ensure the root `.gitignore` exists and contains rules to ignore `target/`, `.idea/`, and `*.class`. Preserve its other contents.
- Print the current Git status using `git status --short --branch`.

Stop and report a failure if any command fails. Do not expose secrets.