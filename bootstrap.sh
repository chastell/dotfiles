#!/usr/bin/env dash

set -eux

ln --force --no-dereference --symbolic --verbose ~/dotfiles/.config/* ~/.config
ln --force --no-dereference --symbolic --verbose ~/dotfiles/.gitconfig ~/.gitconfig
ln --force --no-dereference --symbolic --verbose ~/dotfiles/.zshrc ~/.zshrc
ln --force --no-dereference --symbolic --verbose ~/dotfiles/bin ~/bin

ln --force --no-dereference --symbolic --verbose /usr/bin/batcat ~/bin/bat
ln --force --no-dereference --symbolic --verbose /usr/bin/fdfind ~/bin/fd

urls="
  https://github.com/Wilfred/difftastic/releases/latest/download/difft-x86_64-unknown-linux-gnu.tar.gz
  https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_0.43.1_Linux_x86_64.tar.gz
  https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-gnu.tar.gz
  https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
"
for url in $urls; do
  wget $url -O - | tar -xzf - -C ~/bin &
done
wait

sudo chsh --shell /usr/bin/fish "$USER"
