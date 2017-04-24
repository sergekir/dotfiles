local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_symbol='>'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
local venv_prompt='$(virtualenv_prompt_info)%{$reset_color%}'
local vi_mode_prompt='$(vi_mode_prompt_info)%{$reset_color%}'

PROMPT="%* ${current_dir} ${venv_prompt} ${git_branch}
%B${vi_mode_prompt}${user_symbol}%b "
RPS1="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX="%{$fg[green]%}["
ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"
MODE_INDICATOR="%{$fg[blue]%}N%{$reset_color%}"
