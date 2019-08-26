#!/bin/sh

mcd() {
  mkdir -p "$1" && cd "$1" || return 1
}

_mcd() {
  _files -W "$1" -/
}

ccd() {
  dir="$(echo $1 | xargs -n1 basename | sed 's/\.git$//')"

  if ! test -d "$dir"; then
    hub clone "$1" "$dir"
  fi

  cd "$dir" || return 1
}

