function instagramify
  for file in $argv
    echo "instagramifying $file"
    set ext  (echo $file | awk -F. '{print $NF}')
    set base (basename $file .$ext)
    magick $file                                 \
      -gravity     center                        \
      -background  black                         \
      -extent      "%[fx:h>w?h:w]x%[fx:h>w?h:w]" \
      -resize      "1000x1000"                   \
      -bordercolor black                         \
      -border      "40x40"                       \
      "$base".insta.jpg
  end
end
