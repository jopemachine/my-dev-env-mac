# overwrite default command
alias grep='grep --color=auto'
alias cat='bat --style=plain --paging=never'

# overwrite ls command
alias l='exa -l'
alias la='exa -a'
alias ls='exa -la'
alias lt='exa --tree --level=2'
alias k='exa --tree --level=2'

# python
alias python='python3'
alias pip='pip3'

# vim
alias vi='lvim'
alias vim='lvim'
alias nvim='lvim'

# misc
alias reload='exec fish'

# case-cli
alias camel='case-cli -c=camel'
alias title='case-cli -c=title'

# lazygit
alias lg='lazygit'

# npm
alias npr='npm run'

# ranger
alias ra='ranger'

# ssh
# See https://github.com/alacritty/alacritty/issues/1208
alias ssh='TERM=xterm-256color /usr/bin/ssh'

# git
alias g='git'
alias ga='git add'
alias gcb='git checkout -b'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias glo='git log --oneline --decorate'
alias grb='git rebase'
alias grh='git reset'
alias gss='git stash show'
alias grh1='git reset --hard HEAD~1'
