#
# Config
#

ZSH_THEME="clean"
COMPLETION_WAITING_DOTS="true"
export PATH=$PATH:/bin/:/usr/bin/:/usr/local/bin/:/sbin/:/usr/sbin/:/opt/homebrew/bin
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

plugins=(
    git 
    tmux
    pyenv
)

# Oh My Zsh
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

#
# Aliases
#

alias play="cd ~/Playground"
alias binja="cd ~/Library/Application\ Support/Binary\ Ninja/"
alias l="ls -la"

# 
# Functions
#

DEFAULT_PROMPT=$PROMPT

# Wrapper to check for a venv & display the name
function cd() {
    builtin cd "$@"
    if [[ -n "$VIRTUAL_ENV_PROMPT" ]] ; then
        PROMPT="$VIRTUAL_ENV_PROMPT$DEFAULT_PROMPT"
    elif [[ -n "$VIRTUAL_ENV" ]] ; then
        PROMPT="(`basename $VIRTUAL_ENV`) $DEFAULT_PROMPT"
    else
        PROMPT=$DEFAULT_PROMPT
    fi
}

# .swp file smash!
function swp_smash() {
    find . -name "*.swp" -exec rm -i {} \;
}

# .DS_Store file smash!
function ds_smash() {
    find . -name ".DS_Store" -exec rm -i {} \;
}

