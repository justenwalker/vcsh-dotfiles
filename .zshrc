# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerline"

# Disable setting titles
export DISABLE_AUTO_TITLE=true

# Add pathmunge utility function
pathmunge () {
  if ! echo $PATH | grep -E -q "(^|:)$1($|:)" ; then
    if [ "$2" = "after" ] ; then
      PATH=$PATH:$1
    else
      PATH=$1:$PATH
    fi
  fi
}

# Set Default Path - include /usr/local
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

# Add local bin directory
pathmunge "$HOME/bin"

# Load local environment (pathmunge is available)
if [ -r ~/.zsh_env ]; then
  source ~/.zsh_env
fi

unset pathmunge

# Load local aliases
if [ -r ~/.zsh_aliases ]; then
  source ~/.zsh_aliases
elif [ -r ~/.bash_aliases ]; then # Fallback to bash_alises
  source ~/.bash_aliases
fi

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

export PATH
export NULLCMD=:
