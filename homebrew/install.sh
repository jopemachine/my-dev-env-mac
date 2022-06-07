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
install notion
install notion-enhanced
install simplenote

# development
install jetbrains-toolbox
install visual-studio-code
install runjs
install openinterminal
install responsively

# productivity
install alfred
install hiddenbar
install ndm

# communication
install slack
install discord
install zoom
install telegram-desktop

# others
install google-chrome
install font-fira-code-nerd-font

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

