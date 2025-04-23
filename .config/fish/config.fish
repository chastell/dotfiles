set --export --universal EDITOR nvim

set fish_greeting

fish_add_path ~/bin ~/.cargo/bin /usr/local/sbin /opt/homebrew/sbin /opt/homebrew/bin

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end

if type -q shadowenv
  shadowenv init fish | source
end

if type -q starship
  starship init fish | source
end

if not type -q xdg-open; and type -q open
  alias xdg-open open
end

if not type -q zed; and type -q zeditor
  alias zed zeditor
end
