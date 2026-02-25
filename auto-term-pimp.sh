#!/bin/bash

# Colors
GREEN='\033[0;32'
PURPLE_BOLD='\033[1;35'
BOLD='\e[1m'
NC='\033[0m'

echo "${GREEN}Downloading themes from GitHub...${NC}"

git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.oh-my-zsh/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"
git clone https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/themes/powerlevel10k"

echo "${GREEN}Configuring .zshrc and .p10k.zsh...${NC}"

mv "$HOME/.zshrc" "$HOME/.zshrc-old"
cp zshrc.txt  "$HOME/.zshrc"
cp p10k.zsh.txt "$HOME/.p10k.zsh"
chsh -s "$(which zsh)"

echo "${GREEN}Please restart your terminal and enjoy your new ${PURPLE_BOLD}zshell ${GREEN}theme! :)${NC}"
echo "${GREEN}If you wish to reconfigure ${PURPLE_BOLD}powerlevel10k${GREEN}, please run the command ${BOLD}p10k configure${GREEN}."