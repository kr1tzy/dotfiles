# Path updates
export PATH=$PATH:/bin/:/usr/bin/:/usr/local/bin/:/sbin/:/usr/sbin/:/usr/local/sbin/
export PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/bin:$PATH"

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# Zsh theme
ZSH_THEME="clean"

# pipenv
PIPENV_VENV_IN_PROJECT=true

# Aliases
alias ls="lsd"
alias cat="bat"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

# Pull it in
source $ZSH/oh-my-zsh.sh

# Any plugins
plugins=(
    git, 
    tmux, 
    pyenv
)
