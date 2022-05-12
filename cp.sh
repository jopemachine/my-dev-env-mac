#!/usr/local/bin/zsh
CUR_DIR="$(dirname "$(realpath "$0")")"

cd ${CUR_DIR}
cp ~/.config/nvim/init.vim ./init.vim
cp ~/.config/lvim/config.lua ./config.lua
cp ~/.zshrc ./.zshrc
cp ~/.config/starship.toml ./.config/starship.toml
cp ~/.tmux.conf ./.tmux.conf
cp ~/.gitconfig ./.gitconfig

git reset --soft HEAD^1 && git add . && git commit -m "🔨 Update configs" && git push origin master --force

