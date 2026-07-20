mv -v ~/.config ~/.config.bak
mv -v ~/.local ~/.local.bak
for file in $HOME/.{bashrc,aliases,zshrc,vimrc,tmux.conf,nanorc}
do
    mv -v $file $file.bak
done

stow --ignore='README.md' --ignore='setup.sh' -d ~/dotfiles

rsync -aAXv --ignore-existing --progress ~/.config.bak ~/.config/
rsync -aAXv --ignore-existing --progress ~/.local.bak ~/.local/
