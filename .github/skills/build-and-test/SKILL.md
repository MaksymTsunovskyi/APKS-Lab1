
**`.github/skills/build-and-test/SKILL.md`**
```markdown
---
name: build-and-test
description: Generate Maven and JUnit 5 configuration and cross-platform CI scripts.
---

# Build and Test

Create or update the following files:

- `pom.xml`
- `src/test/java/com/example/AppTest.java`
- `ci.sh`
- `ci.bat`

## Maven Configuration

Configure `pom.xml` for Java 17 and JUnit 5. Ensure Maven can discover and run the JUnit 5 tests.

## Test

In `AppTest.java`, add a JUnit 5 test asserting that `App.add(2, 3)` equals `5`.

## CI Scripts

Both scripts must run:

```text
mvn clean test package