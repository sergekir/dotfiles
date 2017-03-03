export ZSH=$HOME/.tools/oh-my-zsh

ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration
alias vim="nvim"
alias ppwd='export PYTHONPATH=$("pwd")'
alias djcov="coverage run --source='.' manage.py test; coverage html; xdg-open ./htmlcov/index.html"
alias pipo="pip list -o --format=columns"
alias moc="mocp"

export EDITOR=nvim

# Theme
BASE16_SHELL=$HOME/.tools/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_gruvbox-dark-medium

# Virtualenv
WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
