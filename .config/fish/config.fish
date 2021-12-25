if test -f ~/.asdf/asdf.fish
  source ~/.asdf/asdf.fish
else
  source /opt/homebrew/lib/asdf.fish
end

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end

starship init fish | source
