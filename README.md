Mis dotfiles

Depende de [stow](https://github.com/aspiers/stow)

# EXPERIMENTAL
## install dependencies
```bash
sudo apt install git rsync stow
```

## clone repo
```bash
git clone https://github.com/Ariel-U/.dotfiles.git
cd .dotfiles
```

## make backups
```bash
mv -v ~/.config ~/.config.bak
mv -v ~/.local ~/.local.bak

for file in $HOME/.{bashrc,aliases,zshrc,nanorc,p10k.zsh}
do
    mv -v $file $file.bak
done
```

## use stow to link the dotfiles
```bash
stow config local home
```

## restore backups that are not in .dotfiles folder
```bash
rsync -aAXv --ignore-existing --progress ~/.config.bak/ ~/.config/
rsync -aAXv --ignore-existing --progress ~/.local.bak/ ~/.local/
```

## remove backups
```bash
rm -rf ~/.config.bak ~/.local.bak
```
