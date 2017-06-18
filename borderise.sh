borderise() {
  file="$1"
  size="${2:-20}"
  color="${3:-white}"
  name="${file%.*}.borderised.${file##*.}"
  convert "$file"           \
    -trim                   \
    -bordercolor "$color"   \
    -border "$size"x"$size" \
    "$name"
}
