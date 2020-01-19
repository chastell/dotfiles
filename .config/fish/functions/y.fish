function y
  youtube-dl --no-mtime --output "~/Downloads/%(title)s-%(id)s.%(ext)s" --restrict-filenames $argv
end
