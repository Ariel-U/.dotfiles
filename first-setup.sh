#!/usr/bin/env bash

## EXPERIMENTAL

## make backups
mv -v ~/.config ~/.config.bak
mkdir ~/.config


# copy files whith rsync
rsync -aAXv config/.config/ $HOME/.config/
rsync -aAXv home/ $HOME/

## use stow to link the dotfiles
stow --adopt config
stow --adopt home

## restore backups that are not in .dotfiles folder
rsync -aAXv --ignore-existing --progress ~/.config.bak/ ~/.config/

## remove backups
rm -rf ~/.config.bak
