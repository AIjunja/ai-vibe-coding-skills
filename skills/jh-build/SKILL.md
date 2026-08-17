---
name: jh-build
description: Turn a beginner's planning document into one small, testable web-app checkpoint at a time. Use in hands-on AI or vibe-coding classes to scope an idea, preserve the shared starter stack, build the next visible screen or function, recover a broken project, verify the result, and keep mixed-level learners moving without letting databases, APIs, authentication, or deployment overwhelm the session.
---

# JH Build

Help a novice finish one visible result, understand what changed, and retain a
working version. Follow the course's constraints before general web-development
conventions.

## Read The Local Contract

1. Find the learner's brief. Prefer `PROJECT_BRIEF.md`, then a clearly named PRD
   or planning document.
2. Read `AGENTS.md`, `COURSE_CONSTRAINTS.md`, and `CHECKPOINTS.md` when present.
3. Inspect only the files needed for the current checkpoint.
4. If the brief is incomplete, ask at most three blocking questions. Label safe
   assumptions instead of stopping for every missing answer.
5. If instructions conflict, follow the narrower safety, privacy, stack, or time
   boundary.

## Establish Today's Boundary

Before editing, state:

```text
오늘 만들 것:
오늘 미룰 것:
지금 완료할 체크포인트:
완료 화면:
```

For a short beginner workshop, default to one user, one main screen, up to three
inputs, one business rule, one result area, one error state, and a responsive
layout. Reuse the provided starter and stack.

Do not add authentication, an operating database, real personal data, payment,
external posting, messaging, or a production API unless the course contract
explicitly permits it. Convert excluded integrations to manual input,
anonymized sample data, CSV import, local-only state, or copyable output. Read
[scope-conversion.md](references/scope-conversion.md) when the original idea is
too large or risky.

## Run The Checkpoint Loop

Use the first incomplete checkpoint in `CHECKPOINTS.md`, or create this sequence
when no checkpoint file exists:

1. `scope-check`
   - Confirm user, input, one processing rule, output, reviewer, and exclusions.
   - Do not edit until the visible success state is clear.
2. `environment-check`
   - Identify the existing stack and exact run/build commands.
   - Change the stack only when the contract requires it.
3. `first-screen`
   - Put the learner's title, explanation, fields, and sample state into the
     starter.
4. `core-function`
   - Implement one business rule and make the result inspectable without code.
5. `error-mobile`
   - Handle empty or invalid input and inspect a narrow mobile viewport.
6. `build-check`
   - Run the smallest relevant checks and the production build.
7. `release-handoff`
   - Only when requested, explain changed files, commit boundary, deployment
     inputs, and the next maintenance step.
8. `rescue`
   - Reproduce the error, inspect the last change, make the smallest correction,
     or restore the last working checkpoint.

Complete only one checkpoint per request unless the instructor explicitly asks
to continue. After each successful stage, update `CHECKPOINTS.md` with the
visible evidence, verification command, and next stage.

## Keep The Learner In Control

- Explain what will change before changing it.
- Tell the learner what to click or enter and what should appear.
- Show changed files and verification evidence; do not rely on “done.”
- Ask the learner to approve risky or public actions.
- Never let a fast learner take over another learner's keyboard. Give the fast
  learner one extension: edge-case test, usability review, or clearer copy.
- If a classroom blocker lasts more than three minutes, preserve evidence and
  restore the last working checkpoint so the class can continue.

## Verify Before Reporting

1. Start or build the app.
2. Test one normal input.
3. Test an empty or invalid input for interactive checkpoints.
4. Check the narrow viewport when the UI changed.
5. Check that secrets, personal data, and unexpected large files were not added.
6. Report honestly when verification fails.

End with:

```text
완료한 것:
화면에서 확인할 것:
검증 결과:
남은 제한:
다음 체크포인트:
```
