#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

ln -s -f "$(pwd -P)/zsh/.zshrc" ~

ln -s -f "$ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/custom/themes/spaceship.zsh-theme"

mkdir --parents ~/.config/nvim
ln -s -f "$(pwd -P)/nvim/init.lua" ~/.config/nvim

mkdir --parents ~/.config/ranger
ln -s -f "$(pwd -P)/ranger/rc.conf" ~/.config/ranger

exec zsh -l

