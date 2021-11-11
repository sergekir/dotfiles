poetry-shell-activate() {
  if [ -e "$(pwd)/pyproject.toml" ]; then
    if [ ! "$POETRY_ACTIVE" ]; then
      poetry shell
    fi
  fi
}

function virtualenv_prompt_info(){
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=[}$(echo $VIRTUAL_ENV:t | sed -e 's/\-[^\-]*\-[^\-]*$//')${ZSH_THEME_VIRTUALENV_SUFFIX:=]}"
}

chpwd_functions+=(poetry-shell-activate)
export VIRTUAL_ENV_DISABLE_PROMPT=1
