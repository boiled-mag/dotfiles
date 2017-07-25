# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

HISTSIZE=10000
HISTFILESIZE=10000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '

alias rm='rm -i'

alias df='df -h'
alias du='du -h'

alias grep='grep -nH --color=auto'
alias egrep='egrep -nH --color=auto'
alias fgrep='fgrep -nH --color=auto'

alias ls='ls -hF --color=tty'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'

LC_TIME=en_US.UTF-8

PS1='[\u@\h \D{%Y %b %d(%a) %R} \W]\$ '
export PS1

