#!/bin/bash

dir=$(pwd)

# OS Specific installs
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	sudo apt install zsh curl vim tmux git wget unzip -y
	sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf\?raw\=true -O ./Hack_Nerd_Font.ttf
	mv ./Hack_Nerd_Font.ttf ~/.local/share/fonts/
	cd $dir && add_configs
elif [[ "$OSTYPE" == "darwin"* ]]; then
	brew tap homebrew/cask-fonts
	brew cask install font-hack-nerd-font
	brew install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	add_configs
else
	echo "OS is not accounted for in install.sh"
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

vim +PluginInstall

echo && echo "[!] Install successful! Make sure to change the default font in your terminal to the Hack Nerd Font."

# Adds the config files to the home directory
add_configs () { 
	cd $dir
	cp .vimrc ~/.vimrc
	cp .tmux.conf ~/.tmux.conf 
	cp .radare2rc ~/.radare2rc
	cp .zshrc ~/.zshrc
}
