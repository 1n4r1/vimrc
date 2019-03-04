#! /bin/bash

pip install flake8

if [ "$EUID" -ne 0 ];then
    mkdir -p /home/${USER}/.vim/bundle/neobundle.vim
    git clone https://github.com/Shougo/neobundle.vim /home/${USER}/.vim/bundle/neobundle.vim
else
    mkdir -p /${USER}/.vim/bundle/neobundle.vim$
    git clone https://github.com/Shougo/neobundle.vim /${USER}/.vim/bundle/neobundle.vim
fi

echo ":source `pwd`/.vimrc" > ~/.vimrc

echo "alias vim='vim -b'" > ~/.bash_aliases
. ~/.bashrc

