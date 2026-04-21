---

kanban-plugin: board

---

## Overview (What to do next)

- [ ] Add the three missing cells (AI-Native, Yours to Own, Open and Inspectable).
- [ ] Apply the four mechanical normalizations (dash, period, Docker, Oxford comma).
- [ ] Tighten the four uneven cells (1, 4, 9, and either 2 or 6).
- [ ] Then revisit cell count for the merge/move pass.
- [ ] Suggested order (cluster related cells): If you keep all cells plus my additions, the natural clustering is:
	  - **Scope** — One Universal Command, The Whole Stack (or merged), AI-Native, Bidirectional Repo Sync
	  - **Non-destructive** — Idempotent, First-Class Comments
	  - **Ownership** — Yours to Own, Flexible Storage, Open and Inspectable
	  - **Adoption** — Adopt at Your Pace, Use What You Know, Continue Using Homebrew, On Any Mac
	  - **Self-contained** — Lightweight, Batteries Included
	  That's the ordering layer; you can act on it after the merge/cut pass you're planning.


## Completeness gaps (Things the page makes a big deal of elsewhere — especially in the comparison table and the README — that have no cell here)

- [ ] **AI-agent-native** — completely absent from "Why Use MacStack." The comparison table mentions AI-agent configs in row 1, "What MacStack Covers" lists it as scope, but nowhere in this section is it framed as a *benefit*. For a 2026 GitHub audience this is one of the strongest hooks. Suggested cell: **"AI-Native"** — *"First-class management of AI-agent configs, rules, and policies — Cursor, Gemini CLI, OpenCode and more."*
- [ ] **Yours to Own** — the "folder you own, no server, no telemetry, no fee" message from comparison row 4 has no benefit cell. Flexible Storage hints at it but doesn't say it. Suggested cell: **"Yours to Own"** — *"Your stack is a folder you own. No SaaS, no enrollment, no telemetry, no per-device fee, no remote authority."*
- [ ] **Open and Inspectable** — every comparison doc emphasizes "every step is a shell or JS script you can read." This is also the strongest counter to "yet another opaque tool" skepticism. Suggested cell: **"Open and Inspectable"** — *"MacStack is plain shell and JavaScript — every step is readable, forkable, and inspectable."*
- [ ] **Bidirectional Repo Sync** — listed only in "What MacStack Covers" but never benefit-framed. The source docs treat it as uniquely MacStack. Either promote it to a benefit cell or accept that scope-section listing covers it.


## Consistency issues (mechanical fixes)

- [ ] **Dash inconsistency across the page.** Comparison section uses em-dash `—` everywhere; this section uses en-dash `–` (cells 2, 3, 11). Normalize to em-dash for the whole page.
- [ ] **Terminal period inconsistency.** Cells 1, 2, 7, 8 omit the period; cells 3, 4, 5, 6, 9, 10, 11 have it. Pick one. For grid cells with a single sentence, "no terminal period" is the more common landing-page convention; if you keep periods, apply uniformly.
- [ ] **Cell length is uneven.** Cells 1, 2, 7, 8 are tight phrases (~10 words). Cells 3, 4, 9 stretch to two sentences (~25 words). On a grid, this creates ragged row heights. Aim for a consistent density — either all tight one-liners or all "claim + clarification" two-liners — but not a mix.
- [ ] **Sentence opening varies.** Some cells start with "MacStack", some with `mack update`, some with a verb. Parallel openings (e.g., always "MacStack …") would strengthen the scan rhythm. Minor compared to "Cell length is uneven".
- [ ] **"docker" should be "Docker"** in cell 6 (proper noun).
- [ ] **Oxford comma inconsistency.** Cell 6 ("docker containers, virtual machines or MDM") and cell 7 ("memory card or external drive") drop the serial comma; the comparison table uses it. Page-wide normalization recommended.


## Specific cell weaknesses

- [ ] **"The Whole Stack" (cell 2)** mostly duplicates "One Universal Command" (cell 1) and the entire next section. As a benefit cell it doesn't add information. Either merge with cell 1 or repurpose to lead into "What MacStack Covers" with a stronger angle.
- [ ] **"All Configs Are Optional" (cell 4)** has a slight self-undermining effect — *"requires no configs at all"* makes the reader wonder why they'd use it then. The intent is "low barrier to entry; grow at your pace." Suggested rephrase headline: **"Adopt at Your Pace"** — *"Start empty and expand your stack config gradually. No big-bang migration, no upfront commitment."*
- [ ] **"Use What You Know" (cell 9)** is vague. The actual claim is "configs are in formats you already use (`Brewfile`, JSONC, shell scripts) — almost no MacStack-specific syntax to learn." Suggested rephrase: *"MacStack uses formats you already know — `Brewfile`, JSONC, shell. Almost no MacStack-specific syntax to learn."*
- [ ] **"Lightweight" (cell 6)** is currently defined only by negation ("no Docker, no VMs, no MDM"). This is the same point as comparison rows 3 and 4. If kept, sharpen with a concrete claim — e.g., *"No Docker, no VMs, no MDM, no daemon. Just shell scripts that run when you say so."*




%% kanban:settings
```
{"kanban-plugin":"board","show-checkboxes":true,"new-card-insertion-method":"prepend","full-list-lane-width":true,"show-relative-date":true,"lane-width":300,"tag-colors":[{"tagKey":"#bug","color":"rgba(255, 255, 255, 1)","backgroundColor":"rgba(183, 0, 0, 1)"}],"metadata-keys":[{"metadataKey":"assignee","label":"Assigned to","shouldHideLabel":false,"containsMarkdown":false}],"inline-metadata-position":"footer","new-note-folder":"tasks","move-tags":true,"list-collapse":[null,false]}
```
%%