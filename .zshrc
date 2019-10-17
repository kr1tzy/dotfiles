#	Path for /bin directories and pyenv
export PATH=$HOME/bin:/usr/local/bin:$HOME/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Zsh theme
ZSH_THEME="clean"

# Pull it in
source $ZSH/oh-my-zsh.sh

# Any plugins
plugins=(git)
