Promote DIY to its own row. Your instinct is right, and here's the structural reason:

**The current "Single-purpose tools" row is held together by one shared property: each item solves *one slice* of the chain.** Homebrew installs, Stow symlinks, mise versions, asdf versions, Mackup syncs, Dotbot/Strap bootstrap. The MacStack rebuttal ("your whole stack end to end — not just one slice") works because every member of the row is, in fact, a single slice.

**A personal `setup.sh` violates that.** It can already be end-to-end in scope. A maximalist DIY repo can install Homebrew, lay down dotfiles, write IDE settings, pin runtimes, clone repos, and call `defaults write`. So bundling it with the slice tools weakens the row — a careful reader will think "wait, my own script *does* cover the whole stack." The "single slice" framing doesn't land against DIY.

**The real reason a visitor should pick MacStack over their own script is different**, and arguably the most important answer on the page, because every reader on GitHub already has *some* version of a personal setup repo. The honest answer is roughly:

- It's the script you'd otherwise keep rewriting per machine and per year — already written, already maintained, already battle-tested.
- It does the hard parts you wouldn't bother to build: JSONC-aware merging that preserves your comments and hand-edits, IDE config fan-out across seven editors, idempotent convergence that doesn't trash live writes from the apps themselves, AI-agent config schemas that change every other month.
- It separates *the engine* (MacStack, versioned by us) from *your stack* (a folder you own, in the formats you already use). Your `setup.sh` conflates the two — every machine-specific tweak, every bug fix to the installer, every new tool's quirks all pile into the same file. With MacStack you maintain only the declarative part; the procedural part is ours to keep working.
- You can keep your whole stack — engine config, dotfiles, Brewfile, IDE settings, AI rules, repo list — in one folder you back up, sync, or `git push` wherever you like. Same property your DIY repo gives you, without you having to build and debug the runner.

That last bullet is the bridge to the point you raised: **MacStack distinguishes the engine from the user's stack, and the user's stack stays a single folder she owns.** That's a real differentiator and it has no natural home in any of the existing four rows. The DIY row is where it belongs, because DIY is the only alternative whose users *already think this way* — they already have "my stack folder" — and the question they're really asking is "why hand the engine off to someone else?"

### Suggested 5th row

| Column 1 | Column 2 | Column 3 |
|---|---|---|
| **Your own setup script:** | a personal `setup.sh` + `Brewfile` + dotfiles repo, thoughtbot/Laptop, hand-rolled bootstrap repos | **The runner you'd otherwise keep rewriting — already written.** MacStack is the script you'd build if you kept extending your own honestly: idempotent convergence, JSONC-aware merging that preserves your comments and hand-edits, IDE config fan-out across seven editors, AI-agent schemas that keep changing. Your stack stays a folder you own — Brewfile, dotfiles, settings, repo list, all in formats you already use — and MacStack is just the engine that applies it. One folder for the whole stack; we maintain the runner so you don't have to. |

### Knock-on edits to the existing rows

- **Row 1 ("Single-purpose tools"):** drop `setup.sh` from the list. Keep Homebrew, mise, asdf, mackup, Stow, Dotbot, Strap. The "one slice" framing then becomes airtight. (You can also drop `setup.sh` from the prose — currently it's only there because DIY was lumped in.)
- **Ordering:** put the new DIY row **first**, before "Single-purpose tools." Your own conversation notes already concluded this — the GitHub-stars visitor most often arrives with a personal repo, not with Jamf. Lead with the comparison they're actually living.
- **Section heading:** "We checked. Nothing else fit." still works, but you might consider "We checked — and so did the people who tried to build it themselves" or similar to acknowledge the DIY framing up front. Optional.

### One caution

Resist the temptation to make the DIY cell longer than the others. The page's rhythm is four tight cells; a fifth that sprawls will look like special pleading. The bullets above compress well to ~3 sentences if you pick the two strongest claims (engine-vs-stack separation + the hard parts you wouldn't build yourself) and let the rest live on a deeper "vs DIY" page if you ever want one.
