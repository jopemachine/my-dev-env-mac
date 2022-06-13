#!/usr/local/bin/zsh
CUR_DIR="$(dirname "$(realpath "$0")")"

cd ${CUR_DIR}

# $1: config name
# $2: src
# $3: dest
function copyConfig() {
	if [ -f "$2" ]; then
		echo "Copy '$1'"
		cp $2 $3
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
copyConfig "chrome extensions" ~/Downloads/extensions.html       ./configs/chrome/chrome-extensions.html
# copyConfig "vimium-c"          ~/Downloads/vimium_c*             ../configs/chrome/vimium-c/

# legacy
copyConfig "vim"               ~/.vimrc                          ./configs/legacy/vim/.vimrc
copyConfig "neovim"            ~/.config/nvim/init.vim           ./configs/legacy/neovim/init.vim
copyConfig "bash"              ~/.bashrc                         ./configs/legacy/bash/.bashrc
copyConfig "zsh"               ~/.zshrc                          ./configs/legacy/zsh/.zshrc

# export vscode extensions
code --list-extensions | xargs -L 1 >                            ./configs/vscode/vscode-extensions

# git add . && git commit -m "🔨 Update configs" && git push origin master --force
