#!/bin/sh

GITHUB_USERNAME="Carlton-Perkins"

# Ohmyzsh install
sh $(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) "" --unattended

# Powerlevel10k install
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply $GITHUB_USERNAME
