#! /bin/bash

dir=$(pwd)
sudo apt install zsh curl vim tmux git -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/ryanoasis/nerd-fonts.git ~/Desktop/nerd-fonts && cd ~/Desktop/nerd-fonts && ./install.sh Hack
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd $dir && ./addconfigs.sh
vim +PluginInstall
