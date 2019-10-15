#!/bin/bash

dir=$(pwd)

# OS Specific installs
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	sudo apt install zsh curl vim tmux git fonts-hack-ttf -y
	sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	cd $dir && sudo ./addconfigs.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
	brew cask install caskroom/fonts/font-hack
	brew install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	cd $dir && ./addconfigs.sh
else
	echo "OS is not accounted for in install.sh"
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

vim +PluginInstall
