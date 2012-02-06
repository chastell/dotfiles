alias backup='offlineimap; reset; rm -fr ~/.cache/chromium ~/.local/share/Trash ~/.thumbnails; fusermount -u ~/.gvfs; rdiff-backup --print-statistics -v5 ~ /media/Arthur/X301.rdiff; beep -r 3'
alias clive='clive -cf best'
alias cp1250='iconv -t cp1250 -f utf8'
alias diff='diff -u'
alias flac2ogg='for i in *.flac; do oggenc "$i"; done'
alias gap='git add --patch'
alias gcm='git commit --message'
alias gd='git diff'
alias gdc='git diff --cached'
alias gfa='git fetch --all'
alias gitg='gitg --all --all'
alias gl1='git log -1'
alias gst='git st'
alias lmk='latexmk -pdf -pvc'
alias mp32ogg='for i in *.mp3; do lame --decode "$i" - | oggenc --output "`basename \"$i\" .mp3`.ogg" --quiet -; done'
alias ogg2ogg='for i in *.ogg; do oggdec -o - "$i" | oggenc --quiet -o "$i".ogg -; done'
alias rmadison='rmadison -u debian,ubuntu'
alias rs='rsync -aPz'
alias rsd='rsync -aPz --delete --delete-excluded'
alias rvim='gvim --remote-silent'
alias tig='tig --all'
alias u8='iconv -f cp1250 -t utf8'
alias wget='wget -c'
alias youtube-dl='youtube-dl -cl'
