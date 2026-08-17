---
name: jh-design
description: Research live references, separate their structural, interaction, visual, motion, and copy roles, then translate them through the project's real brand identity into a distinctive responsive website or web app. Use when a user provides reference sites, screenshots, PDFs, brand assets, or a desired mood; requests a landing page, corporate or portfolio site, operational app redesign, cinematic hero, scroll motion, copy direction, visible before-and-after pass, mobile verification, or build QA.
---

# JH Design

Design from evidence, not vague adjectives. Assign each reference a job, inspect the project's real identity and media, synthesize—not collage—the references into one project-specific system and prompt, preserve working behavior, then prove the result on desktop and mobile.

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

For brand, landing, portfolio, or cinematic website work, also read [brand-reference-prompt.md](references/brand-reference-prompt.md). It defines the reference-to-prompt contract, brand identity audit, first-three-seconds hook, media provenance, copy ladder, and motion plan.

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

Collect roles, not random pretty sites:

1. **Structure reference:** page composition and information order
2. **Interaction reference:** form, filter, navigation, feedback, and state behavior
3. **Visual reference:** typography, color roles, spacing rhythm, imagery, and motion tone
4. **Hook/copy reference when needed:** first viewport tension, promise, proof, and CTA rhythm
5. **Motion/media reference when needed:** video treatment, scroll choreography, transition grammar, and reduced-motion fallback

One source may fill several roles, but name each borrowed principle separately. Use one or two references when sufficient. Never mix more than three visual directions into one screen.

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

## Brand reading
- Immutable identity:
- Repeatable shapes/materials:
- Existing inconsistencies to remove:
- Media provenance:

## Reference synthesis
- Structure comes from:
- Interaction comes from:
- Visual tone comes from:
- Hook/copy energy comes from:
- Motion/media behavior comes from:
- The final screen will not copy:

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

## Responsive and motion contract
- Desktop media behavior:
- Mobile media behavior:
- Scroll reveal grammar:
- Reduced-motion fallback:
- Text-clipping viewports:
```

Make the direction observable. Replace words like `premium`, `modern`, or `clean` with decisions such as `one-column task flow`, `compact 44px controls`, or `results remain visible beside inputs on desktop`.

## Choose Typography From The Brand

Do not force the bundled classroom font onto every brand. First compare the font's terminals, width, weight range, and perceived personality with the identity and content. Test the longest Korean headline at mobile width before committing.

Use Gmarket Sans for friendly Korean classroom projects when its geometric, approachable tone fits. The bundled files are Light 300, Medium 500, and Bold 700.

Run:

```powershell
powershell -ExecutionPolicy Bypass -File "<skill-directory>\scripts\install-gmarket-sans.ps1" -ProjectRoot "<project-root>"
```

Then add the CSS from [gmarket-sans-css.md](references/gmarket-sans-css.md) to the app's global stylesheet. Reuse existing files instead of installing a web-font dependency. Keep system Korean fonts as fallbacks.

If the brand needs a sharper, denser, more athletic, editorial, or institutional voice, use an appropriately licensed local or project font and record why Gmarket Sans was rejected. Never claim a font is applied until the browser's computed font confirms it loaded.

## Apply The Design In This Order

Read [design-quality-rubric.md](references/design-quality-rubric.md) before implementation.

### 1. Preserve behavior

Do not silently change calculations, required fields, result rules, storage, routes, build commands, framework, package manager, or factual content. Do not add authentication, databases, external APIs, payments, messaging, automatic posting, or real personal data merely for visual completeness.

### 2. Fix the first viewport for the page type

The first viewport must answer:

- What is this page?
- What should the user do now?
- What happens after the action?
- Where does the result appear?

For an operational tool, use one clear title, short supporting copy, one primary action, and the actual tool or content. Do not turn it into a marketing hero.

For a brand, landing, or portfolio site, make the first three seconds earn attention: use one tension or category truth, one brand promise, real media or proof, and one primary action. A background video is evidence only when its provenance and relevance are verified; otherwise use a truthful poster or owned image.

### 3. Build hierarchy before decoration

- Order content according to the task.
- Use spacing and alignment before extra borders or cards.
- Keep repeated operational information compact and scannable.
- Avoid nested cards, decorative badges, giant headings in small panels, and fake dashboards.
- Use stable dimensions for controls and result areas so content changes do not shift the layout.

### 4. Translate references into tokens

- Define font weights, type sizes, line heights, colors, spacing, radii, borders, shadows, icons, and motion once.
- Keep Korean body copy near letter-spacing `0`. If display text uses tighter tracking, inspect actual syllable shapes and line breaks rather than applying a blanket negative value.
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

### 7. Add motion with a named job

Use short feedback for hover, focus, state transitions, and newly produced results. For brand sites, allow cinematic or scroll motion only when each sequence has a named job such as `assemble identity`, `reveal proof`, `compare programs`, or `move to conversion`. Define one reveal grammar and stagger rule instead of unrelated effects. Respect reduced-motion preferences. Do not add scrolling spectacle to an operational tool.

## Verify With Evidence

Before completion:

1. Run one normal input and compare its output with the pre-design behavior.
2. Run one empty or invalid input.
3. Inspect desktop and at least 320, 360, 390, and 430px for public-facing sites; approximately 390px is sufficient for compact operational rescue work.
4. Run the project's build command.
5. Check that no secret, personal data, fake business fact, or unnecessary dependency was added.
6. In `compare` mode, capture the same route, viewport, state, and sample data before and after.
7. Evaluate the result using [design-quality-rubric.md](references/design-quality-rubric.md).
8. Perform a human visual pass after automated overflow checks. Automation can miss ugly Korean syllable breaks, faces cropped out of video, logo/copy collisions, weak opening frames, and excessive empty rhythm.

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
선택한 폰트와 브랜드 적합성:
브랜드 CI와 실제 미디어 확인:
첫 3초 훅과 카피 구조:
그대로 보존한 기능:
눈에 보이게 달라진 점:
직접 확인한 화면과 상태:
모바일 및 빌드 결과:
남은 한계:
```
