#!/usr/bin/env fish

if test (pwd) != ~/dotfiles
    echo "must be run in" ~/dotfiles
    exit 1
end

for path in .config/* .gitconfig .local/share/signore .sqliterc bin
    rm -frv ~/$path
    ln -fnsv ~/dotfiles/$path ~/$path
end
