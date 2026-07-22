#!/usr/bin/env bash

## make backups
mv -v ~/.config ~/.config.bak && mkdir ~/.config
mv -v ~/.local ~/.local.bak && mkdir ~/.local

shopt -s dotglob nullglob

dotfiles_dir="$HOME/.dotfiles/home"

for src in "$dotfiles_dir"/*; do
    [[ -f "$src" ]] || continue

    name=$(basename "$src")
    dst="$HOME/$name"

    [[ -f "$dst" ]] || continue

    if cmp -s "$src" "$dst"; then
        echo "Renombrando: $dst -> $dst.bak"
        mv "$dst" "$dst.bak"
    fi
done

## use stow to link the dotfiles
stow config local home


## restore backups that are not in .dotfiles folder
rsync -aAXv --ignore-existing --progress ~/.config.bak/ ~/.config/
rsync -aAXv --ignore-existing --progress ~/.local.bak/ ~/.local/


## remove backups
rm -rf ~/.config.bak ~/.local.bak
