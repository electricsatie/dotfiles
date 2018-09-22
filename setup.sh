#!/bin/bash

# TODO: Change dot files name from white list to black list.

PWD=$(pwd)

DOT_FILES=(
    .bash_profile
    .bashrc
    .gitconfig
    .gitignore_global
    .gitmessage.txt
    .vimrc
)

for file in ${DOT_FILES[@]}
do
    ln -s $PWD/$file $HOME/$file
done

