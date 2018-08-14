#!/bin/bash

set -x

# Config personal git

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install virtualenv python3
bash ~/dotfiles/install_pyenv.sh

# Install autojump
bash ~/dotfiles/install_autojump.sh

# Install tpm (tmux plugin manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Make dir
mkdir -p /mnt/`hostname`/zwliu

# Source configs
cd ~
cp dotfiles/.zshrc .
cp dotfiles/.tmux.conf .
cp dotfiles/.vimrc .
cp dotfiles/.gitconfig .
cp -r dotfiles/.vim .

echo "Complete! Hello Ziwel Liu!"
echo "Still need to install vim plugin (vundle) by :PluginInstall in vim"
echo "Still need to install tmux plugin (tpm) by <prefix>+I"
