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

source ~/coding/chruby/share/chruby/chruby.sh
source ~/coding/chruby/share/chruby/auto.sh

webify() {
  file="$1"
  size="${2:-2000000@}"
  name="${file%.*}.$size.${file##*.}"
  convert $file -filter triangle -define filter:support=2                 \
    -unsharp 0.25x0.25+8+0.065 -dither none -posterize 136 -quality 82    \
    -define jpeg:fancy-upsampling=off -define png:compression-filter=5    \
    -define png:compression-level=9 -define png:compression-strategy=1    \
    -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip \
    -thumbnail $size $name
}
