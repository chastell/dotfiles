function y
  while ! yt-dlp --no-mtime --output "~/Downloads/%(title).64s-%(id)s.%(ext)s" --restrict-filenames $argv
    yt-dlp --rm-cache-dir
    echo retrying…
  end
end
