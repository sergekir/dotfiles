#!/usr/bin/env bash

packages=(pipenv pew ranger-fm httpie docker-compose glances[docker] legit yapf yamllint)
for package in "${packages[@]}"
do
    pipsi upgrade $package
done
