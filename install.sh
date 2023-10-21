#!/bin/bash

echo "Updating system..."
pacman -Syu
echo "Installing dependencies..."
pacman -S git zsh i3-wm i3status feh arandr autorandr alacritty neovim ttf-firacode-nerd ttf-hack ttf-font-awesome waybar pcmanfm firefox zsh flameshot unzip npm lxappearance noto-fonts-emoji rofi nwg-displays kanshi brightnessctl

echo "Setting zsh as shell"
chsh -s /usr/bin/zsh

echo "Installing oh-my-zsh" 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


read -p "Open a terminal and follow installation of Oh-my-zsh, then press Enter to continue."

echo "Installing PowerLever10K" 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Installing fzf" 
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Moving i3-files..."
cp -r .config/i3 ~/.config/
cp -r .config/i3status ~/.config/
echo "Moving nvim-files..."
cp -r .config/nvim/ ~/.config/
echo "Moving autorandr postswitch hook..."
cp .config/autorandr/postswitch
# autorandr
echo "Moving Alacritty-files..."
cp -r .config/alacritty ~/.config/
echo "Moving rofi-files..."
cp -r .config/rofi ~/.config
echo "Moving zsh and PowerLever10K files" 
cp .zshrc ~/.zshrc
#cp .zshrc.pre-oh-my-zsh ~/.zshrc.pre-oh-my-zsh
cp .p10k.zsh ~/.p10k.zsh

echo "To install neovim configurations, go to `~/.config/nvim/lua/core/plugins.lua` 
and type `:PackerSync` followed by `<ENTER>`
