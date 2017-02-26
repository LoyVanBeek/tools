#! /usr/bin/env bash

source ~/tools/packages/pycharm.sh
source ~/tools/packages/spotify.sh

sudo apt-get update
sudo apt-get install -y $(grep -vE "^\s*#" ~/tools/packages.list  | tr "\n" " ")

sudo pip install -r requirements.txt

# List all packages manually installed with 
# $ comm -23 <(aptitude search '~i !~M' -F '%p' | sed "s/ *$//" | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > tools/packages.txt
