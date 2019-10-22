#!/bin/bash

dir=$(pwd)

# Copies the config files to the home directory
add_configs () { 
	cd $dir
	cp .vimrc ~/.vimrc
	cp .tmux.conf ~/.tmux.conf 
	cp .radare2rc ~/.radare2rc
	cp .zshrc ~/.zshrc
}

# OS Specific installs
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	echo "[*] Starting Linux install..."
	sudo apt install zsh curl vim tmux git wget unzip -y
	sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf\?raw\=true -O ./Hack_Nerd_Font.ttf
	mv ./Hack_Nerd_Font.ttf ~/.local/share/fonts/
	echo "[*] Copying config files to home directory..." && cd $dir && add_configs
elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "[*] Starting Mac install..."
	brew tap homebrew/cask-fonts
	brew cask install font-hack-nerd-font
	brew install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	echo "[*] Copying config files to home directory..." && cd $dir && add_configs
else
	echo "[X] OS is not accounted for in install.sh!"
fi

# --- These only install if they're not already present

# Vundle
[ -d "$HOME/.vim/bundle/Vundle.vim" ] && echo "[*] ~/.vim/bundle/Vundle.vim found, skipping install..." || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Tmux package manager
[ -d "$HOME/.tmux/plugins/tpm" ] && echo "[*] ~/.tmux/plugins/tpm found, skipping install..." || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# pyenv & pyenv-virtualenv
[ -d "$HOME/.pyenv" ] && echo "[*] ~/.pyenv found, skipping install..." || curl https://pyenv.run | bash

# Install Vim plugins 
vim +PluginInstall +smile +sleep3 +qall

echo "[*] Install successful! Make sure to change the default font in your terminal to Nerd Hack!"
