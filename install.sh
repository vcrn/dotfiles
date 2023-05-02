#!/bin/bash

echo "Updating system..."
pacman -Syu
echo "Installing dependencies..."
pacman -S feh arandr autorandr alacritty neovim ttf-firacode-nerd ttf-hack pcmanfm firefox zsh i3-scrot unzip npm lxappearance oto-fonts-emoji

echo "Setting zsh as shell"
chsh -s /usr/bin/zsh

echo "Installing oh-my-zsh" 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing PowerLever10K" 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Installing fzf" 
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Moving i3-files..."
cp -r .config/i3 ~/.config/i3
cp -r .config/i3status ~/.config/i3status
echo "Moving nvim-files..."
cp -r .config/nvim/ ~/.config/nvim
echo "Moving autorandr postswitch hook..."
cp .config/autorandr/postswitch
# autorandr
echo "Moving zsh and PowerLever10K files" 
cp .config/zshrc ~/.zshrc
cp .config/powerlevel10k ~/.p10k.zh

echo "To install neovim configurations, go to `~/.config/nvim/lua/core/plugins.lua` 
and type `:PackerSync` followed by `<ENTER>`
