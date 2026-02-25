#!/bin/bash

echo "Installing required font..."

wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/FiraMonoNerdFont-Regular.otf -P ~/.local/share/fonts/

echo "Downloading themes from GitHub..."

sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

echo "Configuring zshell..."

cat zshrc.txt > ~/.zshrc
chsh -s /bin/zsh

echo "Please restart your machine and enjoy your new zshell theme! :)"