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

copyConfig "lunarvim"          ~/.config/lvim/config.lua ./lunarvim/config.lua

copyConfig "alacritty"         ~/.config/alacritty/alacritty.yml ./alacritty/alacritty.yml
copyConfig "fish"              ~/.config/fish/config.fish ./fish/config.fish
copyConfig "fish-variable"     ~/.config/fish/fish_variables ./fish/fish_variables
copyConfig "fish-aliases"      ~/.config/fish/alias.fish ./fish/alias.fish
copyConfig "starship"          ~/.config/starship.toml ./starship/starship.toml

copyConfig "tmux"              ~/.tmux.conf ./tmux/.tmux.conf
copyConfig "ranger"            ~/.config/ranger/rc.conf ./ranger/rc.conf
copyConfig "git"               ~/.gitconfig ./git/.gitconfig
copyConfig "chrome extensions" ~/Downloads/extensions.html ./chrome/chrome-extensions.html

# legacy
copyConfig "vim"               ~/.vimrc ./vim/.vimrc
copyConfig "neovim"            ~/.config/nvim/init.vim ./neovim/init.vim
copyConfig "bash"              ~/.bashrc ./bash/.bashrc
copyConfig "zsh"               ~/.zshrc ./zsh/.zshrc

# export vscode extensions
code --list-extensions | xargs -L 1 > ./vscode/vscode-extensions

git add . && git commit -m "🔨 Update configs" && git push origin master --force
