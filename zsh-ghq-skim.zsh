function zsh-ghq-skim() {
  local target_dir=$(ghq list -p | sk)

  if [ -n "$target_dir" ]; then
    BUFFER="cd ${target_dir}"
    zle accept-line
  fi

  zle clear-screen
}

zsh-ghq-skim
