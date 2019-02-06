#!/bin/sh

mcd() {
  mkdir -p "$1" && cd "$1" || return 1
}

_mcd() {
  _files -W "$1" -/
}
