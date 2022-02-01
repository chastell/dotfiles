#!/usr/bin/env dash

set -eux

ln --force --symbolic ~/dotfiles/.config/* ~/.config

sudo apt install --assume-yes fish

# Soon…™
# sudo chsh --shell /usr/bin/fish "$USER"
