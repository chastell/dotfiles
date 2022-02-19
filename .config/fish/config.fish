if test -f ~/.asdf/asdf.fish
  source ~/.asdf/asdf.fish
else if test -f /opt/homebrew/Cellar/asdf/0.9.0/libexec/asdf.fish
  source /opt/homebrew/Cellar/asdf/0.9.0/libexec/asdf.fish
end

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end

shadowenv init fish | source
starship init fish | source
