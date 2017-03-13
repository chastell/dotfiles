webify() {
  file="$1"
  size="${2:-2000000@}"
  name="${file%.*}.$size.${file##*.}"
  convert "$file"                      \
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
    "$name"
}
