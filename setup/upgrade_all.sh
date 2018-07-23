#!/usr/bin/env bash

sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean

nvim -c PlugUpgrade -c PlugUpdate -c qall

packages=(pipenv pew ranger-fm httpie docker-compose glances[docker] legit yapf yamllint ipython tldr)
for package in "${packages[@]}"
do
    echo Upgrading $package
    pipsi upgrade $package | grep -v "Requirement already\|Requirement not upgraded as not directly required"
done
