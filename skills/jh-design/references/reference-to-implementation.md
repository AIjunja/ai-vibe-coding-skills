# Reference-to-Implementation Gate

Use this gate in `apply`, `compare`, and substantial `rescue` work. A reference list is not evidence of reference use. The implementation must contain observable translations.

## Required evidence before editing

Open the live source or inspect the supplied capture. For each selected reference, record:

- exact page, section, component, and state inspected
- desktop and mobile behavior when available
- composition: grid, density, scale contrast, and whitespace purpose
- component anatomy: content, controls, borders, media, and state changes
- motion anatomy: trigger, property, duration, easing, choreography, and fallback
- what makes it recognizable and what belongs only to the source brand

Do not implement from a gallery thumbnail, source name, vague memory, or adjectives alone. If a live reference is inaccessible, mark it unavailable and use a supplied capture or replace it.

## Required implementation map

Create this table in `DESIGN_BRIEF.md`. Every row must point to a real local component or planned component name.

| Reference evidence | Extracted principle | Local component | Motion/state | Mobile translation | Acceptance evidence |
|---|---|---|---|---|---|
| exact source section | observable rule | component/file | trigger + property | crop/reflow/removal | screenshot or recording |

Reject rows such as `make it modern`, `use premium style`, or `add smooth motion`.

## Minimum craft floor

Unless the user explicitly requests a static or austere result, every completed design pass must include:

1. **One signature composition** — for example editorial split, asymmetric data rail, sticky narrative, bento with purposeful scale, full-bleed media, or layered comparison.
2. **One signature component** — a project-specific hero, metric story, interactive comparison, timeline, media frame, command surface, or data module. Renaming a generic card does not qualify.
3. **One orchestrated motion sequence** — at least two coordinated elements with a named narrative or task purpose.
4. **Three microinteractions** — hover/focus, selection, state transition, number or chart reveal, feedback, drag, or progress.
5. **One responsive transformation** — not only stacking; change crop, order, density, controls, or motion for mobile.

For operational dashboards, the signature layer can be a data story rather than a marketing hero. Use at least one of: animated count-up with context, chart draw/reveal, linked filtering, expandable metric narrative, sticky comparison, animated status transition, or a purposeful spatial overview.

## Anti-template rejection test

Fail the design and iterate when any statement is true:

- Removing the logo and text would make the screen indistinguishable from a generic admin template.
- The main composition is only equal-size white cards with label/value pairs.
- More than roughly half of the first viewport is accidental empty space.
- Color appears only as a thin top border or isolated button with no spatial or semantic role.
- The chosen reference cannot be pointed to in any implemented component.
- Motion exists only as unrelated fade-ins, or no observable motion evidence was captured.
- Desktop merely collapses into a single column on mobile without a deliberate transformation.
- A component library's default styling remains more visible than the project's brand grammar.

## Component and motion routing

Select tools by job, not popularity:

| Need | Start with | Use for | Guardrail |
|---|---|---|---|
| Distinctive marketing component | 21st.dev, Magic UI, Aceternity UI | hero, marquee, bento, comparison, media treatment | adapt source code and tokens; do not paste a full theme |
| Page composition | Godly, Lapa Ninja, Landing.Gallery, SiteInspire | section order, density, scale, editorial rhythm | inspect the live site and mobile state |
| Product flow | Mobbin, Page Flows, SaaSFrame | task sequence, states, filters, navigation | preserve actual workflow and accessibility |
| Accessible primitives | Radix UI, shadcn/ui | dialog, tabs, select, tooltip, command | primitives are not the final visual direction |
| Data presentation | Tremor, Recharts, Nivo, Observable | KPI story, trend, comparison, distribution | choose a chart from the question the data answers |
| Motion system | Motion, GSAP ScrollTrigger, Rive, Lottie | reveal, layout transition, scroll narrative, interactive illustration | define reduced motion and performance limits |
| Copy | Marketing Examples, Good Microcopy, SaaSFrame | hook, CTA, empty/error/result text | rewrite from verified project evidence |

Motion for React supports scroll-triggered `whileInView`, scroll-linked `useScroll`, and layout transitions. Prefer those before adding GSAP. Use GSAP ScrollTrigger only for a justified pinned or scrubbed timeline. Use Magic UI or Aceternity as pattern sources; keep only effects that reinforce hierarchy or interaction.

## Motion storyboard

Write this before implementation:

| Beat | Trigger | Elements | From → to | Duration/ease | Purpose | Reduced motion |
|---|---|---|---|---|---|---|

At minimum define:

- entrance or first-view beat
- scroll or section transition beat
- component state beat
- hover/focus feedback
- reduced-motion final state

## Proof after implementation

Capture:

- desktop first viewport
- full or representative desktop flow
- 390px first viewport and transformed component
- 5–10 second recording, trace, or sequential screenshots proving the signature motion
- empty/normal/error or equivalent real states for an app

Compare the captures against the implementation map. If a mapped reference principle is not visible, either implement it or remove the claim. Do not lower the rubric score to excuse a generic result; iterate first.
