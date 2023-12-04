# Dotfiles

This repository contains custom configuration files, also known as dotfiles, for enhancing the command-line experience. The primary configurations are for zsh and vim, providing a customized setup to improve productivity and aesthetics.
Zsh Configuration

The zshrc file includes various customizations using Oh My Zsh. Some notable configurations are:

    Theme: The theme is set to "robbyrussell," providing a visually appealing and informative shell prompt.
    Plugins: Several plugins are loaded, enhancing functionality. Notable plugins include git and zsh-autosuggestions.
    Syntax Highlighting: Syntax highlighting is enabled for a better visual indication of command structures.
    FZF Integration: FZF, a command-line fuzzy finder, is integrated for quick and efficient file and command searching.
    Aliases: A section is dedicated to defining personal aliases for convenient shortcuts.

## Vim Configuration

The vimrc file contains a comprehensive set of configurations managed by the Vim Plug plugin manager. Some highlights include:

    Plugins: Various plugins are managed using Vim Plug, including popular ones like vim-easy-align, NERDTree, and vim-go.
    Lightline: The lightline.vim plugin is used to enhance the status line at the bottom of the Vim window.
    TokyoNight Theme: The tokyonight-vim plugin is applied, providing a visually pleasing and customizable color scheme.
    FZF Integration: FZF is integrated into Vim with a hotkey (<C-f>) for easy file searching.

## Installation

    Clone the repository to your home directory:


    git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/.dotfiles

Create symbolic links for the configuration files:


    ln -s ~/.dotfiles/zshrc ~/.zshrc
    ln -s ~/.dotfiles/vimrc ~/.vimrc

Update Plugins
    
    vim +PlugInstall

    Reload your shell or restart Vim to apply the changes.
