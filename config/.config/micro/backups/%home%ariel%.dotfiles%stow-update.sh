#! bin/bash

# copy files whith rsync
rsync -aAXv config/.config/ $HOME/.config/
rsync -aAXv local/.local/ $HOME/.local/
rsync -aAXv home/ $HOME/


## use stow to link the dotfiles
stow --adopt config
stow --adopt local
stow --adopt home

echo "actualizado creo..."
