#! /usr/bin/env bash

echo "Installing additional packages.."
for file in ~/tools/install.d/*
do
	[ -e "$file" ] || continue  # File should exist
	source $file
done

sudo apt-get update
sudo apt-get install -y $(grep -vE "^\s*#" ~/tools/packages.list  | tr "\n" " ")

sudo pip install -r requirements.txt

# List all packages manually installed with 
# $ comm -23 <(aptitude search '~i !~M' -F '%p' | sed "s/ *$//" | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > tools/packages.txt
