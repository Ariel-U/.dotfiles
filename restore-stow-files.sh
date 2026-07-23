#! /bin/bash

# copy files whith rsync
rsync -aAXv config/.config/ $HOME/.config/
rsync -aAXv local/.local/ $HOME/.local/
rsync -aAXv home/ $HOME/
