#!/bin/bash

CURRENT_DIR=$(pwd)

# ----------------------------------------------------
# --- Installs program if it's not available via brew.
brew_install () {
    for program in "$@"; do
        if brew ls --versions $program > /dev/null; then
            echo "[*] $program found; skipping install!"
        else
            brew install $program
        fi
    done
}


# ---------------------------------------------
# --- These only install if they're not present
install () {
    # vim-plug
    if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &
    else
        echo "[*] ~/.vim/autoload/plug.vim found; skipping install!"
    fi

    # tmux package manager
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
	cp .zprofile ~/.zprofile
}


# ------------------------
# --- OS Specific installs
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	echo "[*] Starting Linux install..."

    sudo apt install vim tmux zsh git curl wget unzip nodejs -y
    sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

	echo "[*] Copying config files to $HOME" && cd $CURRENT_DIR && add_configs
    echo "[*] Click the 'Hack_Nerd_Font.ttf' to install it to your system"
elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "[*] Starting Mac install..."
    which -s brew
    if [[ $? != 0 ]] ; then
        # Install Homebrew
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        brew update
    fi

    if brew tap | grep homebrew/cask-fonts > /dev/null; then
        echo "[*] homebrew/cask-fonts found; skipping tap!"
    else
        echo "[*] Tapping homebrew/cask-fonts"
        brew tap homebrew/cask-fonts
    fi

    programs=("font-hack-nerd-font --cask" "git" "tmux" "node")
    brew_install "${programs[@]}"

	if [ ! -d "$HOME/.oh-my-zsh" ]; then 
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

    else
        echo "[*] ~/.oh-my-zsh found; skipping install!"
    fi

	echo "[*] Copying config files to $HOME" && cd $CURRENT_DIR && add_configs
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
else
	echo "[!] OS not accounted for in install.sh!"
fi

 
install && echo "[*] Done! :)"
echo "[!] Make sure to change the default font in your terminal to Nerd Hack"
