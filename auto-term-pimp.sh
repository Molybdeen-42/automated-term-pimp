#!/bin/bash

# Colors
GREEN='\033[0;32m'
PURPLE_BOLD='\033[1;35m'
BOLD='\e[1m'
NC='\033[0m'

echo -e "${GREEN}Downloading themes from GitHub...${NC}"

git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.oh-my-zsh/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"
git clone https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/themes/powerlevel10k"

echo -e "${GREEN}Configuring .zshrc and .p10k.zsh...${NC}"

mv "$HOME/.zshrc" "$HOME/.zshrc-old"
cp zshrc.txt  "$HOME/.zshrc"
cp p10k.zsh.txt "$HOME/.p10k.zsh"
chsh -s "$(which zsh)"

echo -e "${GREEN}Please restart your terminal and enjoy your new ${PURPLE_BOLD}zshell ${GREEN}theme! :)${NC}"
echo -e "${GREEN}If you wish to reconfigure ${PURPLE_BOLD}powerlevel10k${GREEN}, please run the command ${NC}${BOLD}p10k configure${GREEN}."