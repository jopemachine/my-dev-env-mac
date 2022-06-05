#!/usr/local/bin/zsh

function install() {
	echo "Install '$1'"
	brew install $1
}

# installing packages
install zplug
install ripgrep
install mcfly
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
install python3
install luarocks
install go
install chruby
install ruby-install
install hyperfine

# install fish (need to insert more configurations)
# install fish
# curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
# omg install agnoster

# install rust
brew install rustup-init
rustup-init
source $HOME/.cargo/env

# Install with other options
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
install font-fira-code-nerd-font
