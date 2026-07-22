#! /bin/bash

# clonar repo
git clone https://github.com/Ariel-U/dotfiles.git
cd $HOME
# copiar archivos a ~/.dotfiles
mkdir -pv $HOME/.dotfiles
cp -rv ./dotfiles/ $HOME/.dotfiles/

# crear bakups
for file in $HOME/.{bashrc,aliases,zshrc,vimrc,tmux.conf,nanorc}
do
    mv -v $file $file.bak 2>/dev/null
done

# restaurar configuracion creando links simbolicos
cp -rvs .dotfiles/.* $HOME
rsync -aAxv --exlude
# limpiar
source .bashrc || source .zshrc
