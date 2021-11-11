# Path

export PKG_CONFIG_PATH="/usr/lib/x86_64-linux-gnu/pkgconfig/:$PKG_CONFIG_PATH"

export EDITOR=nvim
export TERM=xterm-256color

# ZSH
export ZSH=$HOME/.tools/oh-my-zsh
export ZSH_CUSTOM=$HOME/dotfiles/zsh_custom
export ZSH_DOTENV_PROMPT=false


ZSH_THEME="serpent"
DISABLE_AUTO_UPDATE="true"
plugins=(
    git
    gitignore
    docker
    docker-compose
    dotenv
    httpie
    kubectl
    pip
    poetry
    poetry-shell
    vi-mode
    wd
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
alias cat="bat"
alias ls="exa"
alias ll="exa -lh"
alias l="exa -lah"
alias la="exa -lah"
alias tree="exa -T"
alias xcopy="xclip -selection clipboard"
alias xopen="xdg-open"

# Apps
alias ranger=". ranger"  # change dir on quit
alias plantuml="java -jar ~/.tools/plantuml/plantuml.jar"

# python
alias pipo="pip list -o --format=columns"
alias pipu="pip install --upgrade pip setuptools wheel"
alias pj='python -m json.tool --indent=2'
alias ipython="ipython --TerminalInteractiveShell.editing_mode=vi"
alias gitignore_init="gi python vim > .gitignore"

# docker
alias docker-stop-all='docker stop $(docker ps -q)'
alias dcpush='docker-compose push'
alias docker-remove-dangling='docker rmi $(docker images -q --filter "dangling=true")'
alias docker-restart='sudo service docker restart'
alias docker-pytest='dcr --rm app_test pytest --numprocesses=0 --dist=no'

# git
alias gdic='git icdiff'

# Start or attach to Tmux
if [[ -z "$TMUX" ]]
then
    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`"
    if [[ -z "$ID" ]]
    then
        tmux -u new-session
    else
        tmux -u attach-session -t "$ID"
    fi
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Pre-Commit
export PRE_COMMIT_COLOR=never

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
