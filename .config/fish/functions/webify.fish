function webify
  set size '2000000@'
  for file in $argv
    echo "converting $file"
    set ext  (echo $file | awk -F. '{print $NF}')
    set base (basename $file $ext)
    convert $file                        \
      -colorspace sRGB                   \
      -define filter:support=2           \
      -define jpeg:fancy-upsampling=off  \
      -define png:compression-filter=5   \
      -define png:compression-level=9    \
      -define png:compression-strategy=1 \
      -define png:exclude-chunk=all      \
      -dither none                       \
      -filter triangle                   \
      -interlace none                    \
      -posterize 136                     \
      -quality 82                        \
      -strip                             \
      -unsharp 0.25x0.25+8+0.065         \
      -thumbnail $size                   \
      "$base$size.jpg"
  end
end
