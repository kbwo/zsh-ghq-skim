function zsh-ghq-skim() {
  local target_dir=$(ghq list -p | sk $LBUFFER)

  if [ -n "$target_dir" ]; then
    BUFFER="cd ${target_dir}"
    zle accept-line
  fi

  zle clear-screen
}
