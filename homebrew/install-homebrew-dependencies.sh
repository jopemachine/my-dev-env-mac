#!/usr/local/bin/zsh

function install() {
	echo "Install '$1'"
	brew install $1
}

# installing packages
install ripgrep
install mcfly
install zplug
install autojump
install k
install git-delta
install neovim
install navi
install lazy-git
install tmux
install mas
install glow
install hub
install docker-compose

brew install --HEAD universal-ctags/universal-ctags/universal-ctags

# install applications
install github
install gitkraken
install jetbrains-toolbox
install discord
install zoom
install notion
install notion-enhanced
install iterm2
install alacritty
install google-chrome
install visual-studio-code
install runjs
install simplenote
install slack
install alfred
install telegram-desktop