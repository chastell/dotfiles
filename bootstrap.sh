#!/usr/bin/env dash

set -eux

ln --force --no-dereference --symbolic --verbose ~/dotfiles/.config/* ~/.config
ln --force --no-dereference --symbolic --verbose ~/dotfiles/.gitconfig ~/.gitconfig

curl --create-dirs --fail --location --output ~/.local/share/nvim/site/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qall!

sudo apt install --assume-yes fish

sudo sh -c "$(curl --fail --location --show-error --silent https://starship.rs/install.sh)" -- --force

# sudo chsh --shell /usr/bin/fish "$USER"
