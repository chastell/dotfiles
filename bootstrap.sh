#!/usr/bin/env dash

set -eux

ln --force --no-dereference --symbolic --verbose ~/dotfiles/.config/* ~/.config

sudo apt install --assume-yes fish

sudo sh -c "$(curl --fail --location --show-error --silent https://starship.rs/install.sh)" -- --force

# Soon…™
# sudo chsh --shell /usr/bin/fish "$USER"
