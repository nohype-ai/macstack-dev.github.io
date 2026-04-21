---

kanban-plugin: board

---

## Next

- [ ] The "How to Begin" section is now *first* but "Get started in one minute" as the `h2` is underselling it. At the very top of the page, before a visitor knows anything about the product, the CTA to run a curl command lands with zero context. The hero needs to do more work before the install section hits — the h2 "Your whole tech stack declared in code / and deployed in seconds" is the only thing between the logo and a curl command. That's likely not enough to establish what MacStack is.
- [ ] **No social proof, no visual.** A short terminal recording (asciinema, or even a GIF of `mack update` running) would outperform any amount of copy. Developers star things that *look* cool in motion. A screenshot or snippet of what a stack config file actually looks like would also help — you keep saying "declared in code" but never show the code.
- [ ] Bring back the section "How MacStack Compares" with relevant honest comparisons. Developers considering a tool like this are far more likely to weigh it against **chezmoi, nix-darwin, Homebrew Bundle / Brewfile, mise, or a shell script / dotfiles repo**. Ansible is a different category altogether, the comparison would need to reflect thatl. 
- [ ] **Shrink "Why Formalize" from 12 cells to ~6.** Landing-page research is consistent on this: past 6 benefits, each additional cell dilutes rather than reinforces. Several cells overlap thematically (Keep It Clean / Keep It Consistent / Make It Last, or Accelerate Work / Stay in Control). Cut hard.
- [ ] AI-agent configuration deserves its own block somewhere — hero, features, or its own callout. There it can stand on its own ("first-class AI-agent config management for Cursor, Gemini CLI, OpenCode, MCP servers, …") without needing a competitor to contrast against (as it would in the comparison table).

## Backlog

- [ ] Revisit at 100+ stars: "Star on GitHub" CTA with a live star count badge — `github-buttons` or shields.io (but not before we have a couple hundred stars, at the very least 100)

%% kanban:settings
```
{"kanban-plugin":"board","list-collapse":[false],"show-checkboxes":true,"new-card-insertion-method":"prepend","full-list-lane-width":true,"show-relative-date":true,"lane-width":500,"tag-colors":[{"tagKey":"#bug","color":"rgba(255, 255, 255, 1)","backgroundColor":"rgba(183, 0, 0, 1)"}],"metadata-keys":[{"metadataKey":"assignee","label":"Assigned to","shouldHideLabel":false,"containsMarkdown":false}],"inline-metadata-position":"footer","new-note-folder":"tasks","move-tags":true}
```
%%
