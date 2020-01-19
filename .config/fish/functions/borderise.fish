function borderise
  for file in $argv
    echo "borderising $file"
    set ext  (echo $file | awk -F. '{print $NF}')
    set base (basename $file $ext)
    convert $file        \
      -trim              \
      -bordercolor white \
      -border 20x20      \
      "$base"borderised.png
  end
end
