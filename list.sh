#!/usr/bin/env bash

main() {
	local target_dir
	target_dir="$(dirname "${BASH_SOURCE[0]}")"
	pacman -Qqen | sort > "$target_dir/pacman.list"
	pacman -Qqem | sort > "$target_dir/aur.list"
}
main
