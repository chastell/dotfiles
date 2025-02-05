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
