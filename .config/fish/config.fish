set --export --universal EDITOR nvim

fish_add_path ~/bin ~/.cargo/bin /usr/local/sbin /opt/homebrew/sbin /opt/homebrew/bin

if test -f ~/.asdf/asdf.fish
  source ~/.asdf/asdf.fish
else if test -f /opt/homebrew/Cellar/asdf/0.9.0/libexec/asdf.fish
  source /opt/homebrew/Cellar/asdf/0.9.0/libexec/asdf.fish
end

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end

if type -q shadowenv
  shadowenv init fish | source
end

if type -q starship
  starship init fish | source
end

if status is-interactive && test "$USER" = "spin"
  set ZELLIJ_AUTO_EXIT true
  eval (zellij setup --generate-auto-start fish | string collect)
end
