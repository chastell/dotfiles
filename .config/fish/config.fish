set PATH ~/bin $PATH
source ~/.asdf/asdf.fish
starship init fish | source

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end
