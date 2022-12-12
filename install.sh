#!/bin/bash

printf '\n%b\n' "\033[1m"Updating\ the\ system..."\033[0m"
pacman -Sy archlinux-keyring openssh --noconfirm
pacman -Su --noconfirm

printf '\n%b\n' "\033[1m"Installing\ packages..."\033[0m"
pacman -S \
  zsh \
  fontconfig \
  unzip \
  neovim \
  exa \
  bat \
  git-delta \
  ranger \
  fd \
  ripgrep \
  fzf \
  sd \
  choose \
  gdu \
  duf \
  bottom \
  --needed \
  --noconfirm

printf '\n%b\n' "\033[1m"Installing\ oh-my-zsh..."\033[0m"
RUNZSH=no sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc

printf '\n%b\n' "\033[1m"Cloning\ spaceship\ prompt..."\033[0m"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH/custom/themes/spaceship-prompt" --depth=1

printf '\n%b\n' "\033[1m"Installing\ JetBrains\ Mono\ font..."\033[0m"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

