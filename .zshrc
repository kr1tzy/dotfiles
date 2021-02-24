# Path update
export PATH=$PATH:/bin/:/usr/bin/:/usr/local/bin/:/sbin/:/usr/sbin/:/usr/local/sbin/

# configs
ZSH_THEME="clean"
COMPLETION_WAITING_DOTS="true"
export UPDATE_ZSH_DAYS=14
export ZSH=$HOME/.oh-my-zsh
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# custom aliases
alias play="cd ~/Playground"
#alias cat="batcat"
#alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

# plugs
plugins=(
    git 
    tmux
    pyenv
)

source $ZSH/oh-my-zsh.sh
