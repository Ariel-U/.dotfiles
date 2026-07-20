Mis dotfiles

Depende de [stow](https://github.com/aspiers/stow)

# EXPERIMENTAL

## make backups
```bash
mv -v ~/.config ~/.config.bak
mv -v ~/.local ~/.local.bak

for file in $HOME/.{bashrc,aliases,zshrc,vimrc,tmux.conf,nanorc}
do
    mv -v $file $file.bak
done
```

## use stow to link the dotfiles
```bash
cd dotfiles
stow --ignore='README.md' --ignore='setup.sh' .
cd ~
```

## restore backups that are not in dotfiles folder
```bash
rsync -aAXv --ignore-existing --progress ~/.config.bak/ ~/.config/
rsync -aAXv --ignore-existing --progress ~/.local.bak/ ~/.local/
```

## remove backups
```bash
rm -rf .config.bak .local.bak
```
