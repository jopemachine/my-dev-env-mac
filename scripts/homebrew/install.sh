#!/usr/local/bin/zsh

function install() {
	echo "Install '$1'"
	brew install $1
}

# docker
install docker-compose

# package manager
install mas

# benchmarking
install hyperfine

# cli environment
install neovim
install xxh
install ripgrep
install mcfly
install navi
install glow

# shell
install fish
install zplug

# window management
install tmux

# golang
install go

# ruby
install chruby
install ruby-install

# lua
install luarocks

# python
install python3

# node
install node

# deno
install deno

# rust
install rustup-init
rustup-init
source $HOME/.cargo/env

# installing with other options
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

# git
install hub
install git-delta
install lazy-git
install github
install gitkraken

# terminal
install iterm2
install alacritty

# note
install evernote
install notion
install notion-enhanced
install simplenote

# development
install jetbrains-toolbox
install visual-studio-code
install runjs
install openinterminal
install responsively
install mysqlworkbench
install jetbrains-toolbox
install qt
install arduino
install db-browser-for-sqlite
install postman
install unity-hub

# productivity
install alfred
install hiddenbar
install ndm
install alt-tab
install kindavim
install hex-fiend

# communication
install slack
install discord
install zoom
install telegram-desktop

# quicklook plugins
# https://github.com/sindresorhus/quick-look-plugins
install qlcolorcode
install qlstephen
install qlmarkdown
install quicklook-json
install qlimagesize
install suspicious-package
install apparency
install quicklookase
install qlvideo

# others
install mackup
install mounty
install xbar
install netnewswire
install appcleaner
install google-chrome
install font-fira-code-nerd-font
install mos
install keyboard-lock
install iina
install figma
install scroll-reverser
install skitch
install virtualbox
install wireshark
install drawio
install clocker
install imageoptim
install transmission
install pdfelement
install noxappplayer
install onedrive
install airdroid
install balenaetcher
