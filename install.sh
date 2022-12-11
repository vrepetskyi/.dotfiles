#!/bin/sh

printf "\nUpdating the system...\n"
pacman -Syu --noconfirm

printf "\nInstalling zsh...\n"
pacman -S zsh --noconfirm

printf "\nInstalling oh-my-zsh...\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

printf "\nCloning spaceship prompt...\n"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

printf "\nInstalling misc packages...\n"
pacman -S
  bat \
  fc-cache \
  ranger \
  bottom \
  --noconfirm

printf "\nInstalling JetBrains Mono font...\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

