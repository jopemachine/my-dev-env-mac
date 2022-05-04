#!/usr/local/bin/zsh
CUR_DIR="$(dirname "$(realpath "$0")")"
cd ${CUR_DIR} && cp ~/.vimrc ./.vimrc && cp ~/.zshrc ./.zshrc && cp ~/.config/starship.toml ./.config/starship.toml && cp ~/.tmux.conf ./.tmux.conf
git reset --soft HEAD^1 && git add . && git commit -m "Update" && git push origin master --force
