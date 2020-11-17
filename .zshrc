#	Path updates
export PATH=$PATH:/bin/:/usr/bin/:/usr/local/bin/:/sbin/:/usr/sbin/:/usr/local/sbin/
export PATH=$PATH:/Applications/Ghidra.app/Contents/MacOS/ghidra_9.2_PUBLIC
export PATH=$PATH:$HOME/.pyenv/bin/

# OS dependent
if [[ `uname` == "Darwin" ]]; then
	export PATH=$PATH:/Applications/Ghidra.app/Contents/MacOS/ghidra_9.2_PUBLIC
elif command apt > /dev/null; then
	export PATH=$PATH:$HOME/Playground/ghidra_9.2_PUBLIC
else
    echo 'Unknown OS!'
fi

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
