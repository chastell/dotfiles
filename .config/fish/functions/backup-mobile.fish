function backup-mobile
  rsync --archive --delete --delete-excluded --exclude=.thumbnails --exclude=cache --exclude=com.babbel.mobile.android.en --exclude=com.ea.game.starwarscapital_row --exclude=com.google.android.apps.youtube.kids --exclude=com.netflix.mediaclient --exclude=com.spotify.music --exclude=podcasts --no-i-r --partial --progress --rsh="ssh -p 2222" admin@$argv:SDCard/ ~/A40/SDCard/
  rsync --archive --delete --delete-excluded --exclude=.thumbnails --exclude=cache --exclude=com.babbel.mobile.android.en --exclude=com.google.android.apps.youtube.kids --exclude=com.netflix.mediaclient --exclude=com.spotify.music --exclude=emulated --exclude=podcasts --exclude=self --no-i-r --partial --progress --rsh="ssh -p 2222" admin@$argv:/storage/ ~/A40/storage/
end
