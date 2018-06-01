pipenv-shell-activate() {
  if [ -e "$(pwd)/Pipfile" ]; then
    if [ ! "$PIPENV_ACTIVE" ]; then
      pipenv shell
    fi
  fi
}

function virtualenv_prompt_info(){
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=[}$(echo $VIRTUAL_ENV:t | cut -d- -f1)${ZSH_THEME_VIRTUALENV_SUFFIX:=]}"
}

chpwd_functions+=(pipenv-shell-activate)
export VIRTUAL_ENV_DISABLE_PROMPT=1
