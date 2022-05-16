#!/usr/local/bin/zsh
CUR_DIR="$(dirname "$(realpath "$0")")"

cd ${CUR_DIR}

# neovim
cp ~/.config/nvim/init.vim ./init.vim

# lunarvim
cp ~/.config/lvim/config.lua ./config.lua

# zsh
cp ~/.zshrc ./.zshrc

# starship
cp ~/.config/starship.toml ./.config/starship.toml

# tmux
cp ~/.tmux.conf ./.tmux.conf

# git
cp ~/.gitconfig ./.gitconfig

# chrome extensions
if test -f "~/Downloads/extensions.html";
then
	cp ~/Downloads/extensions.html ./chrome-extensions.html
fi

# vscode extensions
code --list-extensions | xargs -L 1 > vscode-extensions

git add . && git commit -m "🔨 Update configs" && git push origin master --force

