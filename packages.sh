#! /usr/bin/env sh
sudo apt-get install $(grep -vE "^\s*#" ~/tools/packages.list  | tr "\n" " ")

sudo pip install -r requirements.txt

# List all packages manually installed with 
# $ comm -23 <(aptitude search '~i !~M' -F '%p' | sed "s/ *$//" | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > tools/packages.txt