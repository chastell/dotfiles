function backup-mobile
  rsync --archive --delete --delete-excluded --exclude=.thumbnails --exclude=cache --exclude=com.babbel.mobile.android.en --exclude=com.ea.game.starwarscapital_row --exclude=com.netflix.mediaclient --exclude=com.spotify.music --exclude=podcasts --partial --progress --rsh="ssh -p 2222" admin@$argv:SDCard/ ~/XZ1/SDCard/
  rsync --archive --delete --delete-excluded --exclude=.thumbnails --exclude=cache --exclude=com.babbel.mobile.android.en --exclude=com.netflix.mediaclient --exclude=com.spotify.music --exclude=emulated --exclude=podcasts --exclude=self --partial --progress --rsh="ssh -p 2222" admin@$argv:/storage/ ~/XZ1/storage/
end
