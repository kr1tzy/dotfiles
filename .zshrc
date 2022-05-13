# Path update
export PATH=$PATH:/bin/:/usr/bin/:/usr/local/bin/:/sbin/:/usr/sbin/:/usr/local/sbin/

# configs
COMPLETION_WAITING_DOTS="true"
ZSH_THEME="clean"

# custom aliases
alias play="cd ~/Playground"
alias binja="cd ~/Library/Application\ Support/Binary\ Ninja/"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

plugins=(
    git 
    tmux
    pyenv
)

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Sets the prompt with venv name
DEFAULT_PROMPT=$PROMPT

function cd() {
  builtin cd "$@"

  if [[ -n "$VIRTUAL_ENV" ]] ; then
      PROMPT="(`basename $VIRTUAL_ENV`) $DEFAULT_PROMPT"
  else
      PROMPT=$DEFAULT_PROMPT
  fi
}
