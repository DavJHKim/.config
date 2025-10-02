# .config

This repository contains my personal **dotfiles / configuration files** for tools such as Neovim, tmux, Vim, and others. It serves as a centralized place to maintain, version, and share my preferred development environment setup.

## 💡 Overview

| Component | Purpose |
|-----------|---------|
| `nvim/` | Neovim configuration (plugins, settings, keymaps, etc) |
| `tmux/` | tmux configuration (layouts, status bar, plugin setup) |
| `vim/` | Legacy Vim configurations (if needed) |
| `requirements.txt` | List of dependencies needed (e.g. for language servers or helper scripts) |

— as seen in the repository structure :contentReference[oaicite:0]{index=0}

## ⚙️ Features & Highlights

- Modular and version-controlled configuration for each tool  
- Plugin management and automated setup (e.g. install / sync)  
- Custom mappings and workflows tailored to Neovim + tmux integration  
- Cross-platform compatibility (Linux, macOS, possibly Windows / WSL)  
- Backup and safety: symlinks or scripts may back up existing dotfiles before overwriting  

## 🚀 Installation / Setup Guide

> **⚠️ Warning**: Some setup scripts may overwrite your existing dotfiles. Use with caution, ideally after backing things up.

Here’s a typical installation flow:

1. **Clone the repository**  
   ```sh
   git clone https://github.com/DavJHKim/.config.git ~/path/to/config

