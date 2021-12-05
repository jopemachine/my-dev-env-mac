#!/usr/local/bin/zsh
CUR_DIR="$(dirname "$(realpath "$0")")"
cd ${CUR_DIR} && cp ~/.vimrc ./.vimrc && git reset --soft HEAD^1 && git add . && git commit -m "Update" && git push origin master --force
