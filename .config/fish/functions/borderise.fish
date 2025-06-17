function borderise -a file size colour
  set base (path change-extension '' $file)
  magick $file              \
    -trim                   \
    -bordercolor $colour    \
    -border {$size}x{$size} \
    "$base".borderised.png
end
