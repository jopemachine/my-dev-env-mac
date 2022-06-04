#!/usr/local/bin/zsh

function install() {
	echo "Install '$1'"
	pip3 install $1
}

