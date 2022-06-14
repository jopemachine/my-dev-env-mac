set fish_greeting ""
fish_vi_key_bindings
source ~/.config/fish/alias.fish

# https://unix.stackexchange.com/questions/198794/where-does-the-term-environment-variable-default-get-set
# set -gx TERM screen-256color-bce

# Env Path

fish_add_path ~/Library/Android/sdk
fish_add_path ~/.local/bin
fish_add_path ~/go/bin

# Env Variable
set -gx GOPATH ~/go

# Prompt

starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ----------------------------------Third Party---------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------

## PatrickF1/fzf.fish
set fzf_preview_dir_cmd exa --all --color=always
set fzf_fd_opts --type=directory -H -d=3 --follow --exclude=.git --exclude=node_modules

## vim-obsession setting
function vim
  if set -q argv[1]
    eval lvim $argv[1..-1]
  else if test -f Session.vim
    echo "Open Existing Session.."
    eval lvim -S
  else
    echo "Record New Session.."
    eval lvim -c Obsession
  end
end

## github
function github
  open "https://github.com/search?q=$argv[1..-1]"
end

## papago
function papago
  open "https://papago.naver.com/?st=$argv[1..-1]"
end
