---
description: "Apply the build-and-test skill to create Maven, JUnit, and cross-platform CI scripts."
agent: "build-engineer"
---

Read and follow `.github/skills/build-and-test/SKILL.md`.

Ensure these files are created:

- `pom.xml`
- `src/test/java/com/example/AppTest.java`
- `ci.sh`
- `ci.bat`

The configuration must use Java 17 and JUnit 5, and the test must assert `App.add(2, 3) == 5`. The scripts must run `mvn clean test package`; `ci.sh` must use LF line endings and `ci.bat` must use CRLF line endings.

Do not run the build yet. Preserve existing user changes and report whether all required files were created.