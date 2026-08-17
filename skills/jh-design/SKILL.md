---
name: jh-design
description: Research fitting visual references and turn a working web app into a clear, distinctive, responsive design while preserving its behavior. Use for any company, institution, or individual course when the user provides reference sites, screenshots, PDFs, or only a desired mood; when Gmarket Sans should be installed; or when a visible before-and-after design pass, mobile verification, and build QA are required.
---

# JH Design

Design from evidence, not vague adjectives. Collect a small set of relevant references, explain what will be borrowed from each one, translate those decisions into a project-specific visual system, install Gmarket Sans when appropriate, preserve the working behavior, and prove the result on desktop and mobile.

## Choose The Mode

Use the smallest mode that matches the request.

- `direction`: research references and write `DESIGN_BRIEF.md`; do not edit the app.
- `apply`: research, create the brief, implement one complete design pass, and verify it.
- `compare`: perform `apply` and produce matching before-and-after screenshots for teaching or review.
- `rescue`: fix readability, hierarchy, mobile overflow, or broken styling without broad redesign.

Default to `apply`. Use `compare` when the user wants learners or a client to see why the design process matters.

## Inspect Before Designing

1. Read `AGENTS.md` and any project brief, requirements, brand guide, or checkpoint file.
2. Inspect the current app and identify the actual user, task, input, action, and result.
3. Run the app or inspect its current screenshots before choosing a direction.
4. Record the current framework, package manager, routes, commands, and styling approach.
5. Confirm one normal path works. If it does not, report the functional blocker before broad visual work.
6. Check whether the user supplied reference URLs, screenshots, PDFs, or existing client assets.

Never invent business data, brand claims, metrics, logos, product screenshots, or user quotes to make a design look complete.

## Collect References The User's Way

Read [reference-sources.md](references/reference-sources.md) and [reference-card.md](references/reference-card.md).

### Prefer supplied references

- Inspect every supplied image or deck page that materially affects the direction.
- For a supplied website, examine the live page and capture the relevant viewport when possible.
- Separate the user's taste signal from content that belongs only to the source brand.

### Search only when the set is incomplete

Search using this formula:

```text
[industry or user] + [page type] + [interaction or content density] + [desired tone]
```

Examples:

```text
fitness branch manager daily close dashboard compact
public institution application form step by step accessible
Korean instructor portfolio editorial case study
small business promotion planner mobile web app
```

Collect three roles, not three random pretty sites:

1. **Structure reference:** page composition and information order
2. **Interaction reference:** form, filter, navigation, feedback, and state behavior
3. **Visual reference:** typography, color roles, spacing rhythm, imagery, and motion tone

Use one or two references when that is sufficient. Never mix more than three directions into one screen.

### Normalize each reference

For every selected source, record:

- URL or local path and date checked
- screen type and audience
- why it matches this project
- exact elements to adapt
- elements that must not be copied
- risks or mismatches

Do not copy proprietary wording, logos, illustrations, photography, distinctive trade dress, or a complete layout. Reconstruct principles around the current product's real content and workflow.

## Write The Direction Before Editing

Create or update `DESIGN_BRIEF.md` with:

```markdown
# Design Brief

## Product job
[user] enters [input] to get [result] so that [business outcome].

## Direction
[one sentence describing hierarchy, density, tone, and behavior]

## References
| Role | Source | Adapt | Do not copy |
|---|---|---|---|

## Tokens
- Font:
- Text colors:
- Surface colors:
- Accent and semantic colors:
- Spacing steps:
- Radius:
- Border and shadow:
- Motion:

## Screen priorities
1.
2.
3.

## Behavior that must remain unchanged
-
```

Make the direction observable. Replace words like `premium`, `modern`, or `clean` with decisions such as `one-column task flow`, `compact 44px controls`, or `results remain visible beside inputs on desktop`.

## Install Gmarket Sans

Use Gmarket Sans by default for Korean classroom projects when no stronger client brand font exists. The bundled files are Light 300, Medium 500, and Bold 700.

Run:

```powershell
powershell -ExecutionPolicy Bypass -File "<skill-directory>\scripts\install-gmarket-sans.ps1" -ProjectRoot "<project-root>"
```

Then add the CSS from [gmarket-sans-css.md](references/gmarket-sans-css.md) to the app's global stylesheet. Reuse existing files instead of installing a web-font dependency. Keep system Korean fonts as fallbacks.

If a client brand guide specifies another licensed font, follow the brand guide and note why Gmarket Sans was not used.

## Apply The Design In This Order

Read [design-quality-rubric.md](references/design-quality-rubric.md) before implementation.

### 1. Preserve behavior

Do not silently change calculations, required fields, result rules, storage, routes, build commands, framework, package manager, or factual content. Do not add authentication, databases, external APIs, payments, messaging, automatic posting, or real personal data merely for visual completeness.

### 2. Fix the first viewport

The first viewport must answer:

- What is this page?
- What should the user do now?
- What happens after the action?
- Where does the result appear?

Use one clear title, short supporting copy, one primary action, and the actual tool or content. Do not turn an operational tool into a marketing hero.

### 3. Build hierarchy before decoration

- Order content according to the task.
- Use spacing and alignment before extra borders or cards.
- Keep repeated operational information compact and scannable.
- Avoid nested cards, decorative badges, giant headings in small panels, and fake dashboards.
- Use stable dimensions for controls and result areas so content changes do not shift the layout.

### 4. Translate references into tokens

- Define font weights, type sizes, line heights, colors, spacing, radii, borders, shadows, icons, and motion once.
- Use Gmarket Sans with letter-spacing `0`; do not squeeze Korean text with negative tracking.
- Prefer one dominant neutral family plus a restrained accent and semantic success/error colors.
- Use radius at or below 8px unless the selected reference and product type justify otherwise.
- Use the project's existing icon library, preferably Lucide when available.

### 5. Design real states

Cover at least:

- empty or first-use state
- normal completed state
- invalid or error state
- loading state when the app actually performs asynchronous work

Do not rely on color alone. Keep labels visible above fields and preserve keyboard focus.

### 6. Make mobile behavior intentional

Test around 390px wide. Reorder by task sequence, stack columns, preserve readable text, and prevent horizontal scrolling, clipped labels, button wrapping, overlapping content, and unstable heights.

### 7. Add only explanatory motion

Use short feedback for hover, focus, state transitions, and newly produced results. Respect reduced-motion preferences. Do not add scrolling spectacle or decorative animation to an operational tool.

## Verify With Evidence

Before completion:

1. Run one normal input and compare its output with the pre-design behavior.
2. Run one empty or invalid input.
3. Inspect desktop and approximately 390px layouts.
4. Run the project's build command.
5. Check that no secret, personal data, fake business fact, or unnecessary dependency was added.
6. In `compare` mode, capture the same route, viewport, state, and sample data before and after.
7. Evaluate the result using [design-quality-rubric.md](references/design-quality-rubric.md).

Good evidence is specific:

- primary action is visible without scrolling
- long Korean labels wrap without clipping
- input and result regions are distinguishable
- normal and invalid behavior remains correct
- no horizontal scroll at 390px
- production build succeeds

Do not report only that the result looks polished or modern.

## Control Workshop Time

For a short classroom design pass:

- spend 3 minutes selecting references
- spend 2 minutes writing the direction and tokens
- spend 7 minutes implementing one visible pass
- spend 3 minutes on mobile, state, and build checks

Ask at most two blocking design questions. Fast participants may improve one extra state. If styling changes the functional result or breaks the build, return to the last working checkpoint and reduce the scope.

## Report Completion

Report:

```text
선택한 디자인 방향:
참고한 레퍼런스와 가져온 원칙:
Gmarket Sans 적용 여부:
그대로 보존한 기능:
눈에 보이게 달라진 점:
직접 확인한 화면과 상태:
모바일 및 빌드 결과:
남은 한계:
```
