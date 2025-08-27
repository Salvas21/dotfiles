#!/bin/zsh
filename=zsh-plugins-list.txt

cp -an ../.zsh/. ~/.zsh/
cp -an ../.config/. ~/.config/
cp -an ../.aerospace.toml ~/
cp -an ../.vimrc ~/
cp -an ../.wezterm.lua ~/
cp -an ../.zshrc ~/

# install zsh plugins
while read line
do
	cd ~/.zsh/plugins-source/
	git clone $line
done < $filename
