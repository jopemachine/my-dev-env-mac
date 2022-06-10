#!/usr/local/bin/zsh
CUR_DIR="$(dirname "$(realpath "$0")")"

cd ${CUR_DIR}

# $1: config name
# $2: dest
# $3: src
function copyConfig() {
	if [ -f "$2" ]; then
		echo "Copy '$1'"
		cp $3 $2
	else
		echo "'$1' config file not exist"
	fi
}

copyConfig "lunarvim"          ~/.config/lvim/config.lua         ./configs/lunarvim/config.lua

copyConfig "alacritty"         ~/.config/alacritty/alacritty.yml ./configs/alacritty/alacritty.yml
copyConfig "fish"              ~/.config/fish/config.fish        ./configs/fish/config.fish
copyConfig "fish-variable"     ~/.config/fish/fish_variables     ./configs/fish/fish_variables
copyConfig "fish-aliases"      ~/.config/fish/alias.fish         ./configs/fish/alias.fish
copyConfig "starship"          ~/.config/starship.toml           ./configs/starship/starship.toml

copyConfig "tmux"              ~/.tmux.conf                      ./configs/tmux/.tmux.conf
copyConfig "ranger"            ~/.config/ranger/rc.conf          ./configs/ranger/rc.conf
copyConfig "git"               ~/.gitconfig                      ./configs/git/.gitconfig

# legacy
copyConfig "vim"               ~/.vimrc                          ./configs/vim/.vimrc
copyConfig "neovim"            ~/.config/nvim/init.vim           ./configs/neovim/init.vim
copyConfig "bash"              ~/.bashrc                         ./configs/bash/.bashrc
copyConfig "zsh"               ~/.zshrc                          ./configs/zsh/.zshrc

echo "Jobs done"
