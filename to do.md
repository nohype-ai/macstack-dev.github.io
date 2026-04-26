---

kanban-plugin: board

---

## Next

- [ ] The "How to Begin" section is now *first* but "Get started in one minute" as the `h2` is underselling it. At the very top of the page, before a visitor knows anything about the product, the CTA to run a curl command lands with zero context. The hero needs to do more work before the install section hits — the h2 "Your whole tech stack declared in code / and deployed in seconds" is the only thing between the logo and a curl command. That's likely not enough to establish what MacStack is.
- [ ] **Visual: [Asciinema](how%20to/asciinema.md)** A short terminal recording (asciinema, or even a GIF of `mack update` running) would outperform any amount of copy. Developers star things that *look* cool in motion. A screenshot or snippet of what a stack config file actually looks like would also help — you keep saying "declared in code" but never show the code.
- [ ] Shrink cell count in "Why Use MacStack" section. Merge cells or move them elsewhere, or simply delete them, or remove the whole section from the landing page and make it a detail page.
- [ ] **Shrink "Why Formalize" from 12 cells to ~6.** Landing-page research is consistent on this: past 6 benefits, each additional cell dilutes rather than reinforces. Several cells overlap thematically (Keep It Clean / Keep It Consistent / Make It Last, or Accelerate Work / Stay in Control). Cut hard.
- [ ] AI-agent configuration deserves its own block somewhere — hero, features, or its own callout. There it can stand on its own ("first-class AI-agent config management for Cursor, Gemini CLI, OpenCode, MCP servers, …") without needing a competitor to contrast against (as it would in the comparison table).


## Backlog

- [ ] Revisit at 100+ stars: "Star on GitHub" CTA with a live star count badge — `github-buttons` or shields.io (but not before we have a couple hundred stars, at the very least 100)
- [ ] Social Proof ...


## Done

- [x] Bring back the section "How MacStack Compares" with relevant honest comparisons. Developers considering a tool like this are far more likely to weigh it against **chezmoi, nix-darwin, Homebrew Bundle / Brewfile, mise, or a shell script / dotfiles repo**. Ansible is a different category altogether, the comparison would need to reflect thatl.


***

## Archive

- [x] Add the three missing cells (AI-Native, Yours to Own, Open and Inspectable).
- [x] Apply the four mechanical normalizations (dash, period, Docker, Oxford comma).
- [x] Tighten the four uneven cells (1, 4, 9, and either 2 or 6).
- [x] Suggested order (cluster related cells): If you keep all cells plus my additions, the natural clustering is:
	  - **Scope** — One Universal Command, The Whole Stack (or merged), AI-Native, Bidirectional Repo Sync
	  - **Non-destructive** — Idempotent, First-Class Comments
	  - **Ownership** — Yours to Own, Flexible Storage, Open and Inspectable
	  - **Adoption** — Adopt at Your Pace, Use What You Know, Continue Using Homebrew, On Any Mac
	  - **Self-contained** — Lightweight, Batteries Included
	  That's the ordering layer; you can act on it after the merge/cut pass you're planning.
- [x] Then revisit cell count for the merge/move pass.
- [x] **"The Whole Stack" (cell 2)** mostly duplicates "One Universal Command" (cell 1) and the entire next section. As a benefit cell it doesn't add information. Either merge with cell 1 or repurpose to lead into "What MacStack Covers" with a stronger angle.
- [x] **"Use What You Know" (cell 9)** is vague. The actual claim is "configs are in formats you already use (`Brewfile`, JSONC, shell scripts) — almost no MacStack-specific syntax to learn." Suggested rephrase: *"MacStack uses formats you already know — `Brewfile`, JSONC, shell. Almost no MacStack-specific syntax to learn."*
- [x] **"All Configs Are Optional" (cell 4)** has a slight self-undermining effect — *"requires no configs at all"* makes the reader wonder why they'd use it then. The intent is "low barrier to entry; grow at your pace." Suggested rephrase headline: **"Adopt at Your Pace"** — *"Start empty and expand your stack config gradually. No big-bang migration, no upfront commitment."*
- [x] **"Lightweight" (cell 6)** is currently defined only by negation ("no Docker, no VMs, no MDM"). This is the same point as comparison rows 3 and 4. If kept, sharpen with a concrete claim — e.g., *"No Docker, no VMs, no MDM, no daemon. Just shell scripts that run when you say so."*
- [x] **Cell length is uneven.** Cells 1, 2, 7, 8 are tight phrases (~10 words). Cells 3, 4, 9 stretch to two sentences (~25 words). On a grid, this creates ragged row heights. Aim for a consistent density — either all tight one-liners or all "claim + clarification" two-liners — but not a mix.
- [x] **Sentence opening varies.** Some cells start with "MacStack", some with `mack update`, some with a verb. Parallel openings (e.g., always "MacStack …") would strengthen the scan rhythm. Minor compared to "Cell length is uneven".
- [x] **Dash inconsistency across the page.** Comparison section uses em-dash `—` everywhere; this section uses en-dash `–` (cells 2, 3, 11). Normalize to em-dash for the whole page.
- [x] **Terminal period inconsistency.** Cells 1, 2, 7, 8 omit the period; cells 3, 4, 5, 6, 9, 10, 11 have it. Pick one. For grid cells with a single sentence, "no terminal period" is the more common landing-page convention; if you keep periods, apply uniformly.
- [x] **"docker" should be "Docker"** in cell 6 (proper noun).
- [x] **Oxford comma inconsistency.** Cell 6 ("docker containers, virtual machines or MDM") and cell 7 ("memory card or external drive") drop the serial comma; the comparison table uses it. Page-wide normalization recommended.
- [x] **AI-agent-native** — completely absent from "Why Use MacStack." The comparison table mentions AI-agent configs in row 1, "What MacStack Covers" lists it as scope, but nowhere in this section is it framed as a *benefit*. For a 2026 GitHub audience this is one of the strongest hooks. Suggested cell: **"AI-Native"** — *"First-class management of AI-agent configs, rules, and policies — Cursor, Gemini CLI, OpenCode and more."*
- [x] **Yours to Own** — the "folder you own, no server, no telemetry, no fee" message from comparison row 4 has no benefit cell. Flexible Storage hints at it but doesn't say it. Suggested cell: **"Yours to Own"** — *"Your stack is a folder you own. No SaaS, no enrollment, no telemetry, no per-device fee, no remote authority."*
- [x] **Open and Inspectable** — every comparison doc emphasizes "every step is a shell or JS script you can read." This is also the strongest counter to "yet another opaque tool" skepticism. Suggested cell: **"Open and Inspectable"** — *"MacStack is plain shell and JavaScript — every step is readable, forkable, and inspectable."*
- [x] **Bidirectional Repo Sync** — listed only in "What MacStack Covers" but never benefit-framed. The source docs treat it as uniquely MacStack. Either promote it to a benefit cell or accept that scope-section listing covers it.

%% kanban:settings
```
{"kanban-plugin":"board","show-checkboxes":true,"new-card-insertion-method":"prepend","full-list-lane-width":true,"show-relative-date":true,"lane-width":400,"tag-colors":[{"tagKey":"#bug","color":"rgba(255, 255, 255, 1)","backgroundColor":"rgba(183, 0, 0, 1)"}],"metadata-keys":[{"metadataKey":"assignee","label":"Assigned to","shouldHideLabel":false,"containsMarkdown":false}],"inline-metadata-position":"footer","new-note-folder":"tasks","move-tags":true,"list-collapse":[null,null,false]}
```
%%