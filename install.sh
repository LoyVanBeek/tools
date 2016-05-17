#! /usr/bin/env sh

sudo apt-get install vim terminator git  wget
git clone https://github.com/LoyVanBeek/tools.git ~/tools`

# echo 'source ~/tools/bash_aliases.sh' >> ~/.bashrc

# echo 'source ~/tools/git_terminal_setup.sh' >> ~/.bashrc

# gnome-open "https://www.google.com/chrome"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
