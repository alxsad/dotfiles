#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

files=(
    .gitconfig
    .gitmodules
    .vimrc
    .zshrc
)

echo "Creating symlinks..."

for file in ${files[*]}
do
    echo $file
    ln -sf $DIR/$file $HOME/$file
done

echo "Done!"

