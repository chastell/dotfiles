function y
  while ! youtube-dl --no-mtime --output "~/Downloads/%(title).200s-%(id)s.%(ext)s" --restrict-filenames $argv
    youtube-dl --rm-cache-dir
    echo retrying…
  end
end
