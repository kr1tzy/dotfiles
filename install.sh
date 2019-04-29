#! /bin/bash

dir = $(pwd)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/ryanoasis/nerd-fonts.git ~/Desktop/nerd-fonts && cd ~/Desktop/nerd-fonts && ./install.sh Hack
cd dir && ./addconfigs.sh
vim +PluginInstall
