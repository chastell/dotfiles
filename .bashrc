source /etc/skel/.bashrc

ANSIBLE_COW_SELECTION=random

HISTCONTROL=erasedups
HISTFILESIZE=20000000
HISTSIZE=10000000

PROMPT_COMMAND="history -a; history -r; $PROMPT_COMMAND"
PROMPT_DIRTRIM=3
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \[\033[32m\]`git symbolic-ref --short HEAD 2>/dev/null`\[\033[00m\]\$ '

set -o vi

shopt -s autocd
shopt -s globstar
shopt -s histappend

setxkbmap 'pl(intl)'

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
