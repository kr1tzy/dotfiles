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
	# For a root user
	if [ "$(id -u)" == "0" ]; then
		apt install zsh curl vim tmux git wget unzip bat lsd nodejs -y
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &
	# For a non-root user
	else
		sudo apt install zsh curl vim tmux git wget unzip bat lsd nodejs -y
		sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &
	fi
	# Hack Nerd Font
	wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf\?raw\=true -O ./Hack_Nerd_Font.ttf
	mv ./Hack_Nerd_Font.ttf ~/.local/share/fonts/ && rm ./Hack_Nerd_Font.ttf
	echo "[*] Copying config files to home directory..." && cd $dir && add_configs
elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "[*] Starting Mac install..."
	brew tap homebrew/cask-fonts
	brew cask install font-hack-nerd-font
	brew install zsh tmux bat lsd
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	echo "[*] Copying config files to home directory..." && cd $dir && add_configs
else
	echo "[X] OS is not accounted for in install.sh!"
fi

# ----------
# --- These only install if they're not already present

# vim-plug
[ -f "$HOME/.vim/autoload/plug.vim" ] && echo "[*] ~/.vim/autoload/plug.vim found, skipping install..." || curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

# Tmux package manager
[ -d "$HOME/.tmux/plugins/tpm" ] && echo "[*] ~/.tmux/plugins/tpm found, skipping install..." || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# pyenv & pyenv-virtualenv
[ -d "$HOME/.pyenv" ] && echo "[*] ~/.pyenv found, skipping install..." || curl https://pyenv.run | bash

# Install Vim plugins 
vim +PlugInstall +smile +sleep1 +qall

echo "[*] Install successful! Make sure to change the default font in your terminal to Nerd Hack!"
