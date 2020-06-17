function backup-mobile
  rsync --archive --delete --delete-excluded --exclude=.thumbnails --exclude=cache --exclude=com.babbel.mobile.android.en --exclude=com.ea.game.starwarscapital_row --exclude=com.google.android.apps.youtube.kids --exclude=com.netflix.mediaclient --exclude=com.sagosago.World.googleplay --exclude=com.spotify.music --exclude=podcasts --no-i-r --partial --progress --rsh="ssh -p 2222" admin@$argv:SDCard/ ~/A70/SDCard/
end
