# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


if [ ! -z "$PS1" ]; then
  bind '"\e[A": history-search-backward'
  bind '"\e[B": history-search-forward'
fi

PS1="\[\033[01;34m\]$\[\033[00m\] "
HISTFILESIZE=55000
