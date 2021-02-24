#!/bin/bash

CURRENT_DIR=$(pwd)

# ----------------------------------------------------
# --- Installs program if it's not available via brew.
brew_check_and_install () {
    for program in "$@"; do
        if brew ls --versions $program > /dev/null; then
            echo "[*] $program found; skipping install!"
        else
            brew install $program
        fi
    done
}


# -----------------------------------------------------
# --- These only install if they're not already present
os_independent_installs () {
    # vim-plug
    if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &
    else
        echo "[*] ~/.vim/autoload/plug.vim found; skipping install!"
    fi

    # Tmux package manager
    if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &
    else
        echo "[*] ~/.tmux/plugins/tpm found; skipping install!"
    fi

    # pyenv & pyenv-virtualenv
    if [ ! -d "$HOME/.pyenv" ]; then 
        curl https://pyenv.run | bash &
    else
        echo "[*] ~/.pyenv found; skipping install!"
    fi

    # Vim plugin install
    vim +PlugInstall +smile +sleep1 +qall
}


# -------------------------------------------------
# --- Copies the config files to the home directory
add_configs () { 
	cd $CURRENT_DIR
	cp .vimrc ~/.vimrc
	cp .tmux.conf ~/.tmux.conf 
	cp .zshrc ~/.zshrc
}


# OS Specific installs
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	echo "[*] Starting Linux install..."

    sudo apt install vim tmux zsh git curl wget unzip nodejs -y
    sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

	# Hack Nerd Font
	wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf\?raw\=true -O ./Hack_Nerd_Font.ttf

    echo "[*] Remember to install the 'Hack_Nerd_Font.ttf' to your system"
	echo "[*] Copying config files to $HOME" && cd $CURRENT_DIR && add_configs
elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "[*] Starting Mac install..."

    if brew tap | grep homebrew/cask-fonts > /dev/null; then
        echo "[*] homebrew/cask-fonts found; skipping tap!"
    else
        echo "[*] Tapping homebrew/cask-fonts"
        brew tap homebrew/cask-fonts
        echo "[!] Make sure to change the default font in your terminal to Nerd Hack!"
    fi

    programs=("font-hack-nerd-font --cask" "zsh" "tmux" "lsd" "bat")
    brew_check_and_install "${programs[@]}"

	if [ ! -d "$HOME/.oh-my-zsh" ]; then 
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

    else
        echo "[*] ~/.oh-my-zsh found; skipping install!"
    fi

	echo "[*] Copying config files to $HOME" && cd $CURRENT_DIR && add_configs
else
	echo "[!] OS not accounted for in install.sh!"
fi


# OS Independent installs
os_independent_installs && echo "[*] Done! :)"
