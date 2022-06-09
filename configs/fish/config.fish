set fish_greeting ""

fish_vi_key_bindings

# Aliases

source ~/.config/fish/alias.fish

# Env Path

fish_add_path ~/Library/Android/sdk
fish_add_path ~/.local/bin
fish_add_path ~/go/bin

# Prompt

starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Thirdparty

## mcfly
mcfly init fish | source

## PatrickF1/fzf.fish
set fzf_preview_dir_cmd exa --all --color=always
set fzf_fd_opts --type=directory -H -d=3 --follow --exclude=.git --exclude=node_modules
