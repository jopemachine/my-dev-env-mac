#!/usr/local/bin/zsh
cp ~/.vimrc ./vimrc && git reset --soft HEAD^1 && git add * && git commit -m "Update" && git push origin master --force
