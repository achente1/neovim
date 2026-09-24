# 💤 LazyVim

```markdown
# ⚡ Neovim Configuration (`achente1/neovim`)

A fast, modular, and language-rich Neovim distribution built on top of **[LazyVim](https://www.lazyvim.org/)** and **`lazy.nvim`**[cite: 1]. Pre-configured with out-of-the-box support for over 15 programming languages, automated LSP management, debugging, database tooling, AI autocompletion, and terminal UI integrations[cite: 1].

---

## 🛠️ Toolchain & Runtime Management (`mise`)

This setup uses **[mise](https://mise.jdx.dev/)** to manage runtimes, language SDKs, and CLI tools seamlessly across projects.

### Installed Tool Versions (`~/.config/mise/config.toml`)

| Tool / Runtime | Version | Description |
| :--- | :--- | :--- |
| **`ast-grep`** | `0.45.3` | Structural code search & rewriting engine |
| **`go`** | `1.27.1` | Go programming language toolchain |
| **`lazygit`** | `0.65.0` | Terminal UI for Git commands |
| **`lua`** | `5.5.1` | Lua language runtime |
| **`node`** | `24.21.0` (LTS) | Node.js JavaScript runtime |
| **`perl`** | `5.44.0` | Perl scripting language |
| **`python`** | `3.14.7` | Python language runtime |
| **`ruby`** | `4.0.6` | Ruby language runtime |
| **`rust`** | `1.98.1` | Rust programming language toolchain |
| **`yarn`** | `4.18.0` | JavaScript package manager |
| **`zig`** | `0.16.0` | Zig programming language compiler |
| **`zls`** | `0.16.0` | Zig Language Server |

---

## 📦 System Dependencies

Beyond runtimes managed by `mise`, the following core tools and CLI utilities power the editor's search and UI capabilities:

### Core Requirements
- **Neovim** $\ge$ `0.9.0` (0.10+ recommended)
- **Git** $\ge$ `2.19`
- **C Compiler** (`gcc` or `clang`) — Required for Tree-Sitter parser compilation
- **Nerd Font** (e.g., `Meslo LG`, `JetBrainsMono`) — Set as your active terminal font

### CLI Utilities
- **`lazydocker`** — Terminal UI for Docker container management
- **`ripgrep` (`rg`)** & **`fd`** — Required by Telescope / Snacks picker for ultra-fast searching
- **`eza`** & **`bat`** — Enhanced file tree listings and preview syntax highlighting
- **`zoxide`** — Smarter directory navigation

---

## ⚙️ Installation & Setup

### 1. Back Up Existing Configurations
Before installing, safely back up your existing Neovim state:

```bash
# Linux / macOS
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

```

```powershell
# Windows (PowerShell)
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak

```

---

### 2. Install Package Dependencies

```bash
# Install mise and system tools
brew install mise neovim git lazydocker ripgrep fd eza bat zoxide tree-sitter

# Install font
brew install --cask font-meslo-lg-nerd-font

# Bootstrap developer runtimes via mise
mise install

```

```bash
# Install mise
curl [https://mise.run](https://mise.run) | sh

# Arch Linux core packages
sudo pacman -S neovim git lazydocker ripgrep fd eza bat zoxide tree-sitter

# Ubuntu / Debian
sudo apt update && sudo apt install neovim git ripgrep fd-find build-essential

# Bootstrap runtimes via mise
mise install

```

```powershell
# Install tools
winget install jdx.mise Neovim.Neovim Git.Git JesseDuffield.lazygit JesseDuffield.lazydocker BurntSushi.ripgrep.MSVC sharkdp.fd

# Bootstrap runtimes via mise
mise install

```

---

### 3. Clone Repository

```bash
# Linux / macOS
git clone [https://github.com/achente1/neovim.git](https://github.com/achente1/neovim.git) ~/.config/nvim

# Windows (PowerShell)
git clone [https://github.com/achente1/neovim.git](https://github.com/achente1/neovim.git) $env:LOCALAPPDATA\nvim

```

---

## 🌐 Configured Languages & Tooling Stack

Based on active **LazyVim Extras** configuration:

| Category | Language / Tool | LSPs, Formatters & Extras |
| --- | --- | --- |
| **Languages** | **C / C++**<br> | `clangd`, `clang-format`, `cmake`<br> |
|  | **C# / .NET**<br> | `omnisharp`, `roslyn`, `neotest-dotnet`<br> |
|  | **Docker**<br> | `dockerls`, `dockerfile-language-server`<br> |
|  | **Go**<br> | `gopls`, `go-nvim`, `neotest-golang`<br> |
|  | **Java**<br> | `nvim-jdtls`<br> |
|  | **JSON / Schema**<br> | `jsonls`, `schemastore.nvim`<br> |
|  | **Markdown**<br> | `markdown-preview.nvim`, `render-markdown.nvim`<br> |
|  | **Python**<br> | `pyright` / `pylsp`, `venv-selector.nvim`, `neotest-python`<br> |
|  | **Rust**<br> | `rustaceanvim`, `crates.nvim`<br> |
|  | **SQL**<br> | `vim-dadbod`, `vim-dadbod-ui`, `vim-dadbod-completion`<br> |
|  | **Tailwind CSS**<br> | `tailwindcss-colorizer-cmp.nvim`, `tailwindcss-lsp`<br> |
|  | **TypeScript / JS**<br> | `vtsls`, `tsserver`, `prettier`<br> |
|  | **YAML**<br> | `yaml-language-server`, `schemastore.nvim`<br> |
|  | **Zig** | `zls` (managed via `mise`), `nvim-treesitter` |
| **Testing** | Multi-Runner

 | `neotest` (support for Go, Python, .NET, Jest)

 |
| **Debugging** | DAP Suite

 | `nvim-dap`, `nvim-dap-ui`<br> |
| **AI Assistants** | Autocomplete

 | `copilot.lua`, `copilot-cmp`, `codeium.nvim`<br> |
| **Knowledge** | PKM & Docs

 | `obsidian.nvim`, `typst-preview.nvim`<br> |

---

## ⌨️ Dashboard & Keybinding Quick Reference

The `<Leader>` key is assigned to **`Space`**.

### Dashboard Shortcuts

When launching Neovim without arguments, you are presented with the LazyVim dashboard:

| Key | Action |
| --- | --- |
| `f` | Find File

 |
| `n` | Create New File

 |
| `p` | Find Projects (`util.project`)

 |
| `g` | Find Text (Live Grep)

 |
| `r` | Recent Files

 |
| `c` | Edit Neovim Config

 |
| `s` | Restore Last Session

 |
| `x` | Open Lazy Extras Manager

 |
| `l` | Open Lazy Plugin Manager

 |
| `q` | Quit Neovim

 |

### General Workflows

* **`<Leader>gg`** — Open LazyGit terminal UI overlay
* **`<Leader>e`** — Toggle File Explorer / Snacks Picker
* **`<Leader>ff`** — Find Files in current workspace
* **`<Leader>fg`** — Search pattern across workspace (Live Grep)
* **`K`** — Hover LSP documentation
* **`gd`** — Go to Definition
* **`<Leader>ca`** — Code Action suggestions
* **`<Leader>cf`** — Format current buffer (`conform.nvim`)

---

## ⚡ Useful Internal Commands

* **`:Lazy`** — Manage, update, and clean plugins.


* **`:LazyExtras`** — Toggle language packs, UI extras, and utilities on the fly.


* **`:Mason`** — Interactively install or update LSPs, DAP servers, formatters, and linters.


* **`:checkhealth`** — Run diagnostic tests on Neovim, clipboard, LSPs, and system dependencies.

```

```
