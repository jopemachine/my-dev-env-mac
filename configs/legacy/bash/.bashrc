# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/bashrc.pre.bash"
alias python='python3'
alias pip='python3 -m pip'
alias ls='exa'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# added by travis gem
[ ! -s /Users/igyubong/.travis/travis.sh ] || source /Users/igyubong/.travis/travis.sh
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export VISUAL=lvim;
export EDITOR=lvim;

if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/bashrc.post.bash"
