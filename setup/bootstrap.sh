#!/bin/bash
set -e

WORKON_HOME=$HOME/virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
PIPSI_HOME=$WORKON_HOME

echo =====================
echo Installing latest pip
wget -qO- https://bootstrap.pypa.io/get-pip.py | sudo python3

echo =====================
echo Installing virtualenv
sudo pip install virtualenv virtualenvwrapper

echo =======================
echo Installing latest pipsi
wget -qO- https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python3

echo =======================
echo Installing python tools

packages=(pipenv pew ranger-fm httpie docker-compose glances[docker] legit yapf yamllint)
for package in "${packages[@]}"
do
    pipsi install $package
done

echo =================
echo Installing NeoVim
apt install neovim
mkvirtualenv neovim
pip install neovim yapf isort
