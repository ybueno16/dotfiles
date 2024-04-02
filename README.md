# Neovim Dotfiles with LazyVim

This repository contains my personal Neovim configuration files, optimized for a smooth and efficient development experience using LazyVim.

## Features

- **LazyVim**: A fast and lightweight Neovim configuration that focuses on performance and ease of use.
- **Lua Configuration**: Utilizes Lua for configuration, taking advantage of Neovim's native Lua support.
- **Plugin Management**: Includes a curated list of plugins for enhanced functionality, such as autocompletion, LSP support, and more.
- **Custom Themes**: Includes custom themes for a visually appealing and comfortable coding environment.

## Installation

1. **Backup your current Neovim configuration**: Before proceeding, ensure you have a backup of your current Neovim configuration.

2. **Clone the repository**:
`git clone git@github.com:ybueno16/dotfiles.git`


3. **Install LazyVim**:
   This command will install LazyVim and its plugins.

4. **Restart Neovim**: Close and reopen Neovim to apply the changes.

## Configuration Overview

The configuration is organized into the following files and directories:

- `init.lua`: The main entry point for the Neovim configuration.
- `lazy-lock.json`: Contains the locked versions of the plugins for reproducibility.
- `lua/`: Contains all Lua configuration files.
 - `plugins/`: Contains individual plugin configurations.
    - `completions.lua`: Configures autocompletion plugins.
    - `lsp-config.lua`: Sets up the Language Server Protocol (LSP) for code intelligence.
    - `neo-tree.lua`: Configures the NeoTree file explorer.
    - `none-ls.lua`: Configures the None Language Server for additional LSP features.
    - `telescope.lua`: Configures the Telescope fuzzy finder.
    - `tokyonight.lua`: Sets up the TokyoNight theme.
    - `treesitter.lua`: Configures Tree-sitter for syntax highlighting and code analysis.
 - `plugins.lua`: Aggregates all plugin configurations.
 - `vim-options.lua`: Configures Neovim's built-in options.

## Customization

Feel free to customize the configuration to suit your needs. You can modify the Lua files directly or add new ones to extend the functionality.

## Contributing

Contributions are welcome! If you have a feature request or find a bug, please open an issue.

