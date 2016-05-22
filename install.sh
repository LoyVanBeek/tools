#! /usr/bin/env sh

sudo apt-get install vim terminator git  wget
git clone https://github.com/LoyVanBeek/tools.git ~/tools`

echo -e "\nsource ~/tools/bash_aliases.sh" >> ~/.bashrc

echo -e "\nsource ~/tools/git_terminal_setup.sh" >> ~/.bashrc

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

gnome-open "http://servicerobot.cstwiki.wtb.tue.nl/index.php?title=PC_Configuration#Ubuntu_14.04"

git config --global credential.helper cache
git config --global help.autocorrect 1

./packages.sh
