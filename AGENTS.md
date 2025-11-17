# Repository Guidelines

## Project Structure & Module Organization
- `bin/` holds helper scripts meant to be symlinked into `~/bin` (e.g., shell helpers, prompt scripts).
- `config/` mirrors `~/.config` subdirectories (fish, nvim, gitui, starship, kitty, karabiner, etc.); treat each folder as the source of truth for that tool.
- `install` bootstraps a new machine: installs core packages via `apt`, moves existing dotfiles aside, and links the repo-controlled versions. Other top-level files (e.g., `.tmux.conf`, `.gitconfig`) are linked directly from here.

## Build, Test, and Development Commands
- `./install [target_dir]`: main entrypoint; defaults to `$HOME`, installs tmux/python-pip/vim, then links shell, git, vim, and tmux configs interactively.
- `./install -h`: show usage. Run in repo root so symbolic links point to the tracked files.
- No additional build step exists; edits are immediately usable after reloading the relevant app or shell.

## Coding Style & Naming Conventions
- Shell scripts: `bash` shebang, 4-space indentation, favor `set -euo pipefail` and quoting for safety. Keep prompts and helpers idempotent.
- Config directories: match upstream app names (`config/nvim`, `config/fish`, etc.); avoid ad-hoc naming so linking stays predictable.
- Prefer lowercase, hyphenated filenames for new scripts; keep executable bits set in `bin/`.

## Testing Guidelines
- No automated test suite. Validate changes manually: run `./install --help` to ensure parsing works, and dry-run symlinks in a temp dir (`./install /tmp/dotfiles-playground`).
- After edits to a specific tool, launch it once (e.g., `nvim`, `fish`, `tmux`) and confirm it loads without warnings.
- For shell helpers, run `shellcheck bin/<script>` if available to catch obvious issues.

## Commit & Pull Request Guidelines
- Commit messages: concise, imperative (e.g., `chore: refresh nvim plugins`, `fix: tmux powerline path`). Group related config updates in one commit.
- Pull requests: describe the motivation and affected tools, list manual verification steps (commands run, shells/apps launched), and include screenshots only if UI-facing (e.g., terminal themes). Note any system prerequisites such as needing `apt`/sudo.

## Security & System Notes
- `./install` uses `sudo apt`. Review package lists before running on new machines. SSH config linking is optional and should be double-checked for host-specific secrets before enabling.
