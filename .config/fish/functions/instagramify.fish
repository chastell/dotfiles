function instagramify
  for file in $argv
    echo "instagramifying $file"
    set ext  (echo $file | awk -F. '{print $NF}')
    set base (basename $file $ext)
    magick $file                            \
      -gravity center                       \
      -extent "%[fx:h>w?h:w]x%[fx:h>w?h:w]" \
      "$base"instagram.jpg
  end
end
