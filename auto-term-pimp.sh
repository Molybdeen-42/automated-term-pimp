#!/bin/bash

echo "Installing required font..."

wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/FiraMonoNerdFontMono-Regular.otf -P "$HOME/.local/share/fonts/"

echo "Downloading themes from GitHub..."

git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.oh-my-zsh/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"
git clone https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/themes/powerlevel10k"

echo "Configuring .zshrc (zshell)..."

mv "$HOME/.zshrc" "$HOME/.zshrc-old"
cp zshrc.txt  "$HOME/.zshrc"
chsh -s "$(which zsh)"

echo "Please restart your terminal/machine and enjoy your new zshell theme! :)"