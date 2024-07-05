function backup-mobile
  rsync                     \
    --archive               \
    --delete                \
    --delete-excluded       \
    --exclude=/Android/data \
    --exclude=/Android/obb  \
    --ignore-errors         \
    --no-i-r                \
    --partial               \
    --progress              \
    --rsh="ssh -p 2222"     \
    admin@$argv:SDCard/ ~/Xperia/SDCard/
end
