function vs
  for file in *.{avi,flv,mkv,mov,mp4,ogv,webm}
    echo (mediainfo --Inform="General;%Duration/String3%" $file) $file
  end | sort
end
