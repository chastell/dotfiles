function backup
  sudo rsnapshot -c ~/rsnapshot.conf $argv
  notify-send -t 0 $argv' backup ✅'
end
