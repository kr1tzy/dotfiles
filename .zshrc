#	Path updates
export PATH=$PATH:/bin/:/usr/bin/:/usr/local/bin/:/sbin/:/usr/sbin/:/usr/local/sbin/
export PATH=$PATH:/home/kritz/Playground/ghidra_9.1.2
export PATH=$PATH:$HOME/.pyenv/bin/

# Path to your oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# Pyenv stuff
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Zsh theme
ZSH_THEME="clean"

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
plugins=(git)
