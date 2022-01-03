if test -f ~/.asdf/asdf.fish
  source ~/.asdf/asdf.fish
else
  source /opt/homebrew/Cellar/asdf/0.9.0/libexec/asdf.fish
end

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end

starship init fish | source
