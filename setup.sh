#!/bin/bash

PWD=$(pwd)

DOT_FILES=(
    .bash_profile
    .bashrc
    .gitconfig
    .gitignore_global
    .vimrc
)

for file in ${DOT_FILES[@]}
do
    ln -s $PWD/$file $HOME/$file
done

