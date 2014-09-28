source /etc/skel/.bashrc

HISTFILESIZE=2000000
HISTSIZE=1000000

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[32m\]`git branch 2>/dev/null | grep ^*`\[\033[00m\]\$ '

set -o vi

shopt -s autocd
shopt -s globstar

setxkbmap 'pl(intl)'

source /usr/local/share/chruby/chruby.sh
