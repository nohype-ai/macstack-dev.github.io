# MacStack

## Brainstorm

* Config as code. Non-destructive. On any Mac.

---


Install:
`curl -fsSL https://macstack.dev/install.sh | zsh`

---

**Manual Mac setup is slow, inconsistent, and never finishes.**

You reinstall tools, reconfigure git, hunt for fonts, restore IDE settings, and clone repos every time you get a new machine — or even just want to stay current.

MacStack ends it.

**Your config as code. One command to rule them all.**

---

**Features**

- Shell customizations (prompt, paths, functions, aliases, environment)  
- Global git configuration  
- Fonts  
- Command line tools (brew, git, pyenv, python, claude-code, etc.)  
- Graphical apps (including Mac App Store apps)  
- Settings and keybindings for Zed and VS Code-based IDEs  
- Extensions for VS Code-based IDEs  
- All your git repositories  

Everything updates to latest versions. Idempotent. Nothing you didn’t declare gets touched.

---

**How it works**

1. Put your config in `stack/macstack.json` + `stack/`  
2. Run `mack update` (first time: download repo, customize, then run)  
3. Every future update: just `mack update` (or even `update`)  

Works on a fresh macOS install or an existing machine.

---

**Get started**

```bash
git clone https://github.com/nohype-ai/MacStack.git
cd MacStack
# customize stack/macstack.json and stack/
bin/mack update

Now mack update is available globally forever.

[GitHub](https://github.com/nohype-ai/MacStack)
