# Path update
export PATH=$PATH:/bin/:/usr/bin/:/usr/local/bin/:/sbin/:/usr/sbin/:/usr/local/sbin/

# Configs
ZSH_THEME="clean"
COMPLETION_WAITING_DOTS="true"
export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias play="cd ~/Playground"
alias binja="cd ~/Library/Application\ Support/Binary\ Ninja/"
#alias cat="batcat"
#alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

# Plugins
plugins=(
    git 
    tmux
    pyenv
)

# Pull in oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Sets the prompt with venv name
DEFAULT_PROMPT=$PROMPT

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
