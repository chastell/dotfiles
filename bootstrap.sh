#!/usr/bin/env dash

set -eux

ln --force --no-dereference --symbolic --verbose ~/dotfiles/.config/* ~/.config
ln --force --no-dereference --symbolic --verbose ~/dotfiles/.gitconfig ~/.gitconfig
ln --force --no-dereference --symbolic --verbose ~/dotfiles/.zshrc ~/.zshrc
ln --force --no-dereference --symbolic --verbose ~/dotfiles/bin ~/bin

wget https://github.com/Wilfred/difftastic/releases/latest/download/difft-x86_64-unknown-linux-gnu.tar.gz -O - | tar -xzf - -C ~/bin

curl --create-dirs --fail --location --output ~/.local/share/nvim/site/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# nvim +PlugInstall +qall!

sudo sh -c "$(curl --fail --location --show-error --silent https://starship.rs/install.sh)" -- --force

# sudo chsh --shell /usr/bin/fish "$USER"
