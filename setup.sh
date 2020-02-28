#! /bin/bash

cd

pip install flake8

mkdir -p ~/.vim/pack/flake8/start/
git clone https://github.com/nvie/vim-flake8.git ~/.vim/pack/flake8/start/vim-flake8
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/pack/syntastic/start/syntastic
mkdir -p ~/.vim/spell
ln -s ~/vimrc/en.utf-8.add ~/.vim/spell/en.utf-8.add
ln -s ~/vimrc/en.utf-8.add.spl ~/.vim/spell/en.utf-8.add.spl

echo ":source ~/vimrc/inar1-vimrc" > ~/.vimrc
