#!/usr/bin/env bash

main() {
  local target_dir
  target_dir="$(dirname "${BASH_SOURCE[0]}")"
  # pacman
  pacman -Qqen | sort >"$target_dir/pacman.list"
  pacman -Qqem | sort >"$target_dir/aur.list"
  # npm
  npm ls --depth=0 -g | tail -n +2 | sort | sed 's/^[├└]─*\(.*\)/\1/' > "$target_dir/npm.list"
  # pip
  pip freeze >"$target_dir/pip.list"
}
main
