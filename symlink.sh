#!/bin/bash

initial_path=$(pwd)
dotfiles_path=$(cd $(dirname $BASH_SOURCE[0]); pwd -P)
cd ~

printf '\n%b\n' 'Symlinking configs...'

ln -s -f "$dotfiles_path/zsh/.zshrc" .

ln -s -f "$ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/custom/themes/spaceship.zsh-theme"

ln -s -f "$dotfiles_path/git/.gitconfig" .

rm ~/.config
mkdir .config
cd .config

mkdir nvim
ln -s -f "$dotfiles_path/nvim/init.lua" nvim

mkdir ranger
ln -s -f "$dotfiles_path/ranger/rc.conf" ranger

cd $initial_path
exec zsh -l

