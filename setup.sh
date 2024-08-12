#!/bin/bash

# Backup any previous configuration
mv ~/.zshrc ~/.zshrc.bak

mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

mv ~/.config/wezterm{,.bak}
mv ~/.config/aerospace{,.bak}

brew bundle

# Symlink for .zshrc so we keep zsh configuration in the ~/.config folder
ln -s ~/.config/zsh/.zshrc ~/.zshrc

curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

antigen apply
