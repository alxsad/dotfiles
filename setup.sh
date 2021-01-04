#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

files=(
    .gitconfig
    .gitmodules
    .vimrc
    .zshrc
    .zshrc.alias
)

echo "Creating symlinks..."

for file in ${files[*]}
do
    echo $file
    ln -sf $DIR/$file $HOME/$file
done

echo "Done!"
