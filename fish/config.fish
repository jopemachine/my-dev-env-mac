set fish_greeting ""

fish_vi_key_bindings

# Aliases

source ~/.config/fish/alias.fish

# Env Path

fish_add_path ~/Library/Android/sdk
fish_add_path ~/.local/bin

# Prompt

starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Thirdparty

## mcfly
mcfly init fish | source

