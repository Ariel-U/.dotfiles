#!/usr/bin/env bash

## EXPERIMENTAL

## make backups
mv -v ~/.config ~/.config.bak && mkdir ~/.config
mv -v ~/.local ~/.local.bak && mkdir ~/.local

# copy files whith rsync
rsync -aAXv config/.config/ $HOME/.config/
rsync -aAXv local/.local/ $HOME/.local/
rsync -aAXv home// $HOME/

## use stow to link the dotfiles
stow --adopt config
stow --adopt local 
stow --adopt home

## restore backups that are not in .dotfiles folder
rsync -aAXv --ignore-existing --progress ~/.config.bak/ ~/.config/
rsync -aAXv --ignore-existing --progress ~/.local.bak/ ~/.local/

## remove backups
#rm -rf ~/.config.bak ~/.local.bak
