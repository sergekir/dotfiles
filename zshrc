# Path
PATH=$HOME/.local/bin:$PATH

# Virtualenv
WORKON_HOME=$HOME/virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# PyEnv
export PYENV_ROOT=$HOME/.tools/pyenv
export PATH=$PYENV_ROOT/bin:$PATH

# ZSH
export ZSH=$HOME/.tools/oh-my-zsh
export ZSH_CUSTOM=$HOME/dotfiles/zsh_custom

ZSH_THEME="serpent"
DISABLE_AUTO_UPDATE="true"
plugins=(
    git
    gitignore
    docker
    docker-compose
    django
    httpie
    pipenv
    pyenv
    vi-mode
    virtualenvwrapper
)

source $ZSH/oh-my-zsh.sh

# User configuration

# History settings
setopt noincappendhistory
setopt nosharehistory

# Aliases
alias vim="nvim"
alias vi="nvim"
alias moc="mocp"
alias ccat="pygmentize -g"

# ranger quit to opened dir
alias ranger=". ranger"

# python
alias djcov="coverage run --source='.' manage.py test && coverage html && xdg-open ./htmlcov/index.html"
alias pipo="pip list -o --format=columns"
alias pipu="pip install --upgrade pip setuptools wheel"
alias pretty_json='python -m json.tool'
alias ipython="ipython --TerminalInteractiveShell.editing_mode=vi"
alias gitignore_init="gi python vim > .gitignore"

# docker
alias docker-stop-all='docker stop $(docker ps -q)'
alias dcpush='docker-compose push'


export EDITOR=nvim

# Theme
BASE16_SHELL=$HOME/.tools/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_eighties

# Start or attach to Tmux
if [[ -z "$TMUX" ]]
then
    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`"
    if [[ -z "$ID" ]]
    then
        tmux new-session
    else
        tmux attach-session -t "$ID"
    fi
fi

# Pipenv
# compdef pipenv
_pipenv() {
  eval $(env COMMANDLINE="${words[1,$CURRENT]}" _PIPENV_COMPLETE=complete-zsh  pipenv)
}
if [[ "$(basename ${(%):-%x})" != "_pipenv" ]]; then
  autoload -U compinit && compinit
  compdef _pipenv pipenv
fi
