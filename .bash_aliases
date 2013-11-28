alias a='ack-grep'
alias backup-to-arthur='offlineimap; rdiff-backup --exclude ~/.cache --print-statistics --verbosity 5 ~ /media/chastell/Arthur/Asus.rdiff'
alias backup-to-zaphod='offlineimap; rdiff-backup --exclude ~/.cache --print-statistics --verbosity 5 ~ /media/chastell/Zaphod/Asus.rdiff'
alias be='bundle exec'
alias beep='play --no-show-progress --null -V0 synth pl C fade 0 0.3'
alias clive='clive --format best'
alias computer,='sudo '
alias cp1250='iconv --from-code utf8 --to-code cp1250'
alias diff='diff --unified'
alias flac2ogg='for i in *.flac; do oggenc "$i"; done'
alias gap='git add --patch'
alias gcam='git commit --amend'
alias gcm='git commit --message'
alias gcms='git commit --message "signore: sigbase update"'
alias gdc='git diff --cached'
alias gd='git diff'
alias gfa='git fetch --all --prune --verbose'
alias g='git'
alias gitg='gitg . --all'
alias gl1='git log --decorate --oneline -1'
alias gl='git log --decorate --oneline'
alias glp='git log --patch'
alias gpdo='git push --delete origin'
alias gpff='git pull --ff-only'
alias gst='git st'
alias gtr='printf "1m2\nwq\n" | EDITOR=ed git rebase -i HEAD^^'
alias gua='git update-index --assume-unchanged'
alias gu='git up'
alias lmk='latexmk -pdf -pvc'
alias picard='LIBOVERLAY_SCROLLBAR=0 picard'
alias random_mac='sudo ifconfig wlan0 ether `openssl rand -hex 6 | sed "s/\(..\)/\1:/g; s/.$//"`'
alias restore_mac='sudo ifconfig wlan0 ether ..:..:..:..:..:..'
alias rmadison='rmadison --url debian,ubuntu'
alias rsd='rsync --archive --compress --delete --delete-excluded --partial --progress'
alias rs='rsync --archive --compress --partial --progress'
alias rvim='gvim --remote-silent'
alias sigp='signore pronto'
alias sig='signore'
alias tig='tig --all'
alias u8='iconv --from-code cp1250 --to-code utf8'
alias wget='wget --continue'
alias youtube-dl='youtube-dl --continue --literal'
