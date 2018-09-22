#!/bin/bash

PWD=$(pwd)

DOT_FILES=(
    .vimrc
)

for file in ${DOT_FILES[@]}
do
    ln -s $PWD/$file $HOME/$file
done

