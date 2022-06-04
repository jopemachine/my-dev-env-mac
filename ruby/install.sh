#!/usr/local/bin/zsh

function install() {
	echo "Install '$1'"
	gem install $1
}

install jekyll
