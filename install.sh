#! /usr/bin/env sh

sudo apt-get install vim terminator git  wget
git clone https://github.com/LoyVanBeek/tools.git ~/tools

echo -e "\nsource ~/tools/bash_aliases.sh" >> ~/.bashrc

echo -e "\nsource ~/tools/git_terminal_setup.sh" >> ~/.bashrc

cd ~/tools
./packages.sh
