#!/usr/local/bin/zsh
CUR_DIR="$(dirname "$(realpath "$0")")"

cd ${CUR_DIR}

# neovim
cp ~/.config/nvim/init.vim ./neovim/init.vim

# lunarvim
cp ~/.config/lvim/config.lua ./lunarvim/config.lua

# zsh
cp ~/.zshrc ./zsh/zshrc

# starship
cp ~/.config/starship.toml ./starship/starship.toml

# tmux
cp ~/.tmux.conf ./tmux/.tmux.conf

# git
cp ~/.gitconfig ./git/.gitconfig

# chrome extensions
if test -f "~/Downloads/extensions.html";
then
	cp ~/Downloads/extensions.html ./chrome/chrome-extensions.html
fi

# vscode extensions
code --list-extensions | xargs -L 1 > ./vscode/vscode-extensions

git add . && git commit -m "🔨 Update configs" && git push origin master --force

