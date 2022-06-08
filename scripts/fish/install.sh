#!/usr/local/bin/zsh

function install() {
	echo "Install '$1'"
	fisher install $1
}

install wfxr/forgit
install PatrickF1/fzf.fish
install jethrokuan/z
