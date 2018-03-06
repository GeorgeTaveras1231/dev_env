[ -z "$TMUX" ] && export TERM=screen-256color
export PS1=" \[\033[38;5;5m\]\$\[\033[0m\] "

# Git autocomplete
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
