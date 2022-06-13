# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
# zsh, zplug setting
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="true"

# PATH setting
export PATH=/usr/local/bin:/usr/local/sbin:~/.local/bin:$PATH

# android development setting
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_AVD_HOME=~/.android/avd

# personal aliasing
alias python=python3
alias rm=trash
alias vi=lvim
alias vim=lvim
alias nvim=lvim

#----------------------------------------------------------------------
#----------------------------------------------------------------------
#-------------------------Installed zplugins---------------------------
#----------------------------------------------------------------------
#----------------------------------------------------------------------

# oh-my-zshs plugins
zplug 'plugins/git',   from:oh-my-zsh
zplug 'plugins/autojump', from:oh-my-zsh, frozen:1
zplug 'plugins/web-search', from:oh-my-zsh
zplug 'plugins/node', from:oh-my-zsh
zplug 'lib/completion',   from:oh-my-zsh
zplug 'lib/key-bindings', from:oh-my-zsh
zplug 'lib/directories',  from:oh-my-zsh

zplug 'b4b4r07/enhancd', use:init.sh
zplug 'djui/alias-tips'
zplug 'supercrabtree/k'
zplug 'lukechilds/zsh-better-npm-completion', defer:2
zplug 'mafredri/zsh-async', from:'github', use:'async.zsh'
zplug 'junegunn/fzf', as:command, hook-build:'./install --bin', use:'bin/{fzf-tmux,fzf}'
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'ogham/exa'
zplug 'IngoMeyer441/zsh-easy-motion'
zplug 'jeffreytse/zsh-vi-mode'

# Unused zplugins
# zplug "zsh-users/zsh-completions"
# zplug "zsh-users/zsh-history-substring-search"
# zplug 'wfxr/forgit' "zplug forgit not working in some commands
# zplug 'starship/starship' "Prefer agnoster
# zplug 'denysdovhan/spaceship-prompt', use:spaceship.zsh, from:github, as:theme "Prefer agnoster
# zplug 'marlonrichert/zsh-autocomplete'

# Plugins set up and load
if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

zplug load

#----------------------------------------------------------------------
#----------------------------------------------------------------------
#----------------------Installed plug settings-------------------------
#----------------------------------------------------------------------
#----------------------------------------------------------------------

# zsh-vi-mode
# Only changing the escape key to `jk` in insert mode, we still
# keep using the default keybindings `^[` in other modes
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj

# zsh-easy-motion
bindkey -M vicmd ' ' vi-easy-motion

# autojump setting
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# exa setting
alias ls=exa

# starship setting
# eval "$(starship init zsh)"

# forgit setting
export PATH="$PATH:$FORGIT_INSTALL_DIR/bin"

forgit_log=glo
forgit_diff=gd
forgit_add=ga
forgit_reset_head=grh
forgit_ignore=gi
forgit_checkout_file=gcf
forgit_checkout_branch=gcb
forgit_checkout_commit=gco
forgit_clean=gclean
forgit_stash_show=gss
forgit_cherry_pick=gcp
forgit_rebase=grb
forgit_fixup=gfu

# uncomment below line to fully use forgit
# source <(curl -sSL git.io/forgit)

alias grh1="git reset --hard HEAD~1"

export TERM="xterm-256color"

# case-cli setting
alias camel="case-cli -c=camel"
alias title="case-cli -c=title"

# golang setting
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# fzf setting
source $ZPLUG_HOME/repos/junegunn/fzf/shell/key-bindings.zsh
source $ZPLUG_HOME/repos/junegunn/fzf/shell/completion.zsh

export FZF_DEFAULT_COMMAND="fd --type d -H -d 3 -E .git -E node_modules --follow"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"

# lunarvim vim-obsession setting
function lvim() {
	if test $# -gt 0; then
		env lvim "$@"
	elif test -f Session.vim; then
	echo 'Open Existing Session..'
	env lvim -S
	else
		echo 'Record New Session..'
	env lvim -c Obsession
	fi
}

# mcfly setting
eval "$(mcfly init zsh)"
export MCFLY_KEY_SCHEME=vim
export MCFLY_FUZZY=2
export MCFLY_RESULTS=20

# k setting
alias k='k -ha'

# ranger setting
export EDITOR="lvim"
export VISUAL="lvim"

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
