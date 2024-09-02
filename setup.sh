#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

files=(
    .gitconfig
    .gitmodules
    .vimrc
    .zshrc
    .zshrc_alias
    .zshrc_fn
)

echo "Creating symlinks..."

for file in ${files[*]}
do
    echo $file
    ln -sf $DIR/$file $HOME/$file
done

mkdir $HOME/.bin || true
ln -sf $DIR/.bin/totp $HOME/.bin/totp
ln -sf $DIR/.bin/newtotp $HOME/.bin/newtotp

ln -sf $DIR/starship.toml $HOME/.config/starship.toml

echo "Done!"
