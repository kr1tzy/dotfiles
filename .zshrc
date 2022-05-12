# Path update
export PATH=$PATH:/bin/:/usr/bin/:/usr/local/bin/:/sbin/:/usr/sbin/:/usr/local/sbin/

# configs
ZSH_THEME="clean"
COMPLETION_WAITING_DOTS="true"
export ZSH=$HOME/.oh-my-zsh
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# custom aliases
alias play="cd ~/Playground"
alias binja="cd ~/Library/Application\ Support/Binary\ Ninja/"
#alias cat="batcat"
#alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

plugins=(
    git 
    tmux
    pyenv
)

source $ZSH/oh-my-zsh.sh
