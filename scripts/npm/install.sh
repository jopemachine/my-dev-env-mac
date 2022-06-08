#!/usr/local/bin/zsh

function install() {
	echo "Install '$1'"
	npm i -g $1
}

install tldr
install yo
install n
install fkill-cli
install kill-port
install fast-cli
install trash-cli
install open-cli
install ts-node
install broken-link-checker
install pageres-cli
install np
install npm-name-cli
install capture-website-cli
install @jopemachine/trymodule

# alfred workflows
install alfred-plash
install alfred-npms
install alfred-nym
install alfred-vscode
install alfred-xcode

