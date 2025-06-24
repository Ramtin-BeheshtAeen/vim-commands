copy configs to the nvim config folder
```bash
git clone https://github.com/Ramtin-BeheshtAeen/vim-commands.git ~/.config/nvim
```

isntall [packer.nvim](https://github.com/wbthomason/packer.nvim/blob/master/README.md):
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
open up pakcer.lua insode nvim config folder using `nvim lua/ramtin/packer.lua and run `:so` command inside nvim

if manson returned error, add the following line to end of the packer.lua:
```lua
use {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
}

use {
  "williamboman/mason-lspconfig.nvim",
  after = "mason.nvim",
  config = function()
    require("mason-lspconfig").setup()
  end
}
```

---


# Vim Commands
---
title: Vim Cheatsheet
---

# Vim Cheat Sheet

| **Category**          | **Command**                       | **Description**                                        |
|-----------------------|-----------------------------------|--------------------------------------------------------|
| **Undo / Redo**       | `u`                               | Undo last change                                       |
|                       | `Ctrl + r`                        | Redo last undone change                                |
| **Line Motion**       | `k` / `j`                         | Move up / down one line                                |
|                       | `n + k` / `n + j`                 | Move *n* lines up / down                               |
|                       | `d3j`                             | Delete 3 lines downward                                |
| **Word Motion**       | `w`                               | Move forward by word                                   |
|                       | `b`                               | Move backward by word                                  |
| **Character Motion**  | `0` / `$`                         | Start / end of line                                    |
|                       | `t<char>`                         | Move **before** the next occurrence of `char`          |
|                       | `_`                               | Go to first non-blank character of line                |
|                       | `%`                               | Jump to matching bracket or function end               |
|                       | `,` / `;`                         | Repeat search forward / backward                       |
| **Text Objects**      | `vi(` / `vi)`                     | Select inside parentheses                              |
|                       | `ci(` / `ci)`                     | Change inside parentheses                              |
|                       | `va]`                             | Select around square brackets                          |
| **Search**            | `/word`                           | Search for "word"                                      |
|                       | `n` / `N`                         | Repeat search forward / backward                       |
| **Plugins**           | `fzf`                             | Fuzzy file finder                                      |
|                       | `harpoon`                         | Quick navigation between files                         |

---

## Undo / Redo

* **Undo**: `u`
* **Redo**: `Ctrl + r`

---

## Motions (Navigation)

### Line Movement

* **Up**: `k`
* **Down**: `j`
* **Move *n* lines up**: `n + k`
* **Move *n* lines down**: `n + j`
* **Delete 3 lines downward**: `d3j`

### Word Movement

* **Hop forward by word**: `w`
* **Hop backward by word**: `b`

### Character Movement

* **Go to the beginning of the line**: `0`
* **Go to the end of the line**: `$`
* **Go up to a character (not including it)**: `t<char>` (e.g., `t(`)
* **Go exactly to a character**: `_`
* **Go to the matching pair (e.g., brackets or function end)**: `%`
* **Forward to next occurrence (in search)**: `,`
* **Backward to previous occurrence**: `;`

---

## Text Objects & Editing

### Inside/around parentheses or brackets

* **Highlight inside `()`**: `vi(` or `vi)`
* **Change inside `()` (delete and start typing)**: `ci(` or `ci)`
* **Highlight around `[]` (including brackets)**: `va]`

---

## Search

*(You had a heading but no content—consider adding examples like these)*:

* **Search for a word**: `/word`
* **Repeat search forward**: `n`
* **Repeat search backward**: `N`

---

## Useful Plugins / Tools

* **Fuzzy Finder** (e.g., [fzf](https://github.com/junegunn/fzf))
* **Harpoon** (Quick file navigation plugin)

---


## Harpoon Shortcuts

| **Shortcut**              | **Action**                                  |
|---------------------------|---------------------------------------------|
| `<leader> + a`            | Add the current file to the Harpoon list    |
| `Ctrl + e`                | Show the Harpoon file list                  |
| `Ctrl + q` / `w` / `e` / `r` | Navigate to tab 1 / 2 / 3 / 4 respectively |

