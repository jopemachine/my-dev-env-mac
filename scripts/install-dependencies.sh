#!/usr/local/bin/zsh

function install_depedencies() {
	echo "Install '$1'"
	sh ./$1/install.sh
}

install_depedencies homebrew
install_depedencies luarocks
install_depedencies mas
install_depedencies ruby
install_depedencies pip

