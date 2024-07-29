function y
  yt-dlp --no-mtime --output "~/Downloads/%(title).64s-%(id)s.%(ext)s" --restrict-filenames $argv
end
