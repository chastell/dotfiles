set PATH ~/bin $PATH

if test -f ~/.asdf/asdf.fish
  source ~/.asdf/asdf.fish
else
  source /usr/local/opt/asdf/libexec/asdf.fish
end

starship init fish | source

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end
