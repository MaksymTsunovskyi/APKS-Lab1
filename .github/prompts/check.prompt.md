---
description: "Validate generated project files, run the Maven build and tests, and check that target is not tracked."
agent: "build-engineer"
---

Perform read-only validation. Do not modify source, configuration, or Git index files. Running the build may create files under `target/`.

Check that all expected generated files exist:

- `README.md`
- `.github/agents/build-engineer.agent.md`
- `.github/skills/project-scaffold/SKILL.md`
- `.github/skills/build-and-test/SKILL.md`
- `.github/skills/github-actions/SKILL.md`
- `.github/prompts/git-init.prompt.md`
- `.github/prompts/create-project.prompt.md`
- `.github/prompts/create-build.prompt.md`
- `.github/prompts/create-actions.prompt.md`
- `.github/prompts/check.prompt.md`
- `.github/prompts/init.prompt.md`
- `.gitignore`
- `src/main/java/com/example/App.java`
- `pom.xml`
- `src/test/java/com/example/AppTest.java`
- `ci.sh`
- `ci.bat`
- `.github/workflows/ci.yml`

Then run the platform-appropriate CI script: on Windows, execute `ci.bat`; on Linux or macOS, run `bash ci.sh`. This runs the Maven build and JUnit tests.

Verify that no path under `target/` is tracked by Git, for example by checking `git ls-files -- target/` returns no paths. Do not change the Git index to fix a failure.

Output exactly `RESULT: PASS` only if every file exists, the CI script succeeds, and `target/` is not tracked. Otherwise output `RESULT: FAIL - <reason>` with the failure reason. Stop on check failure.