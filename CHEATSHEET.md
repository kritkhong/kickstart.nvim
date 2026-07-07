# nvim + tmux cheatsheet

Personal quick reference. Open from anywhere with `<space>sn` → `cheat` (searches your nvim config dir).
Leader key = `<space>`. LSP keys (`gr*`, `K`) work in files where a language server is attached (e.g. `.py`).

---

## 🔭 Finding things — Telescope (from an editor window)

| Key | Does |
|---|---|
| `<space>sf` | **open file** by name (Cmd-P) |
| `<space>sg` | **grep** across whole project (Cmd-Shift-F) |
| `<space><space>` | switch between **open files** (buffers) |
| `<space>sw` | grep the **word under cursor** |
| `<space>s.` | **recent files** |
| `<space>sd` | list all **diagnostics** |
| `<space>sk` | **search keymaps** — discover any shortcut |
| `<space>sh` | search **help** docs |
| `<space>sr` | **resume** last search |

Inside any picker: type to filter · `Ctrl-n`/`Ctrl-p` move · `Enter` open · `Esc Esc` cancel

## 🌲 File tree — neo-tree

| Key | Does |
|---|---|
| `\` | toggle tree open/close |
| `j` / `k` · `Enter` | move · open file / expand folder |
| `/` · `D` · `#` | fuzzy filter · **directory** search · fuzzy sort |
| `Ctrl-x` | clear the filter |
| `a` · `r` · `d` | add · rename · delete file |
| `R` | manual refresh (auto-refreshes via file watcher) |
| `?` | show **all** neo-tree keys |

## 📑 Buffers & windows

| Key | Does |
|---|---|
| `<space><space>` | list/switch open buffers (in picker, `Ctrl-d` closes one) |
| `:bd` · `:bd!` | close current buffer · force (discard changes) |
| `:bn` / `:bp` | next / previous buffer |
| `Ctrl-w h/j/k/l` | move focus between split windows |
| `Ctrl-w w` · `Ctrl-w q` | cycle windows · close window |

**Distinction:** `:q` closes a *window* · `:bd` closes a *buffer* (the file) · `:qa` quits nvim.

## 🧭 Code navigation — LSP (in a `.py` file)

| Key | Does |
|---|---|
| `grd` | **go to definition** |
| `Ctrl-o` / `Ctrl-i` | jump **back** / forward |
| `K` | **hover** docs/signature |
| `grr` · `gri` · `grt` | references · implementation · type def |
| `grn` · `gra` | **rename** · code action (quick-fix) |
| `]d` / `[d` | next / previous diagnostic |
| `<space>q` | list all diagnostics in a quickfix panel |
| `:LspRestart` | reload the LSP (e.g. after a pyright config change) |

## 💾 Files & saving

`:w` save · `:q` quit window · `:wq` save+quit · `:qa` quit all
`:e` reload current file from disk · `:e!` force-reload (discard edits) · `:e <path>` open file
`Esc` clears search highlight

## ✂️ Editing power moves (beyond basic movement)

| Key | Does |
|---|---|
| `ciw` | **change inner word** |
| `ci"` · `ci(` · `cit` | change inside quotes · parens · HTML/XML tag |
| `di(` · `da(` | delete inside · around parens |
| `.` | **repeat last change** (very powerful) |
| `u` / `Ctrl-r` | undo / redo |
| `o` / `O` | open new line below / above |
| `A` / `I` | append at line end / insert at line start |
| `>>` / `<<` | indent / dedent line |
| `V` · `Ctrl-v` | visual **line** · visual **block** (column edits) |
| `*` | search word under cursor |
| `gg` / `G` / `:42` | top / bottom / go to line 42 |

## 🔎 Search (in a file)

`/text` forward · `?text` back · `n` / `N` next / prev · `Esc` clear highlight

## 🩺 Tools

`<space>f` format buffer · `:Mason` manage LSP servers · `:checkhealth` diagnose setup · `:Lazy`/`vim.pack` plugins

## 🪟 tmux (prefix = `Ctrl-b`)

| Key | Does |
|---|---|
| `Ctrl-b c` · `Ctrl-b ,` | new window · rename window |
| `Ctrl-b 0-9` · `Ctrl-b n`/`p` | jump to window N · next / prev |
| `Ctrl-b %` / `Ctrl-b "` | split pane vertical / horizontal |
| `Ctrl-b` +arrows · `Ctrl-b z` | move between panes · zoom pane fullscreen |
| `Ctrl-b d` · `tmux a` | detach (processes keep running) · reattach |
| `Ctrl-b [` | copy mode (then `v` select, `y` copy to clipboard) |

---

**Fastest payoff:** `<space>sf` / `<space>sg` (find) and `grd` + `Ctrl-o` (navigate). The `.` command and `ciw` / `ci"` text objects are the biggest editing upgrades.
