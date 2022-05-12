# My Dev-Env for MacOS

## Required Dependencies

- oh-my-zsh
- agnoster theme or starship
- vim, tmux
- mcfly: 명령어 히스토리 fuzzy search
- autojump: 디렉토리 명 추론해 바로 이동
- exa, k: 모던 ls
- iTerm
- forgit, git-delta
- Nerd font file
- ranger

## Optional Dependencies

## How to install, configure `vim`

### LunarVim

- Neovim, rust, node 설치 필요

- [설치](https://github.com/LunarVim/LunarVim/tree/a2714c3c382a1b6c9d4390eead924cc48ac594a3#install-in-one-command)

### Neovim

- `VimPlug` 설치

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- Python 3 provider 설치

```
$ python3 -m pip install --user --upgrade pynvim
```

### Vim

```
$ brew install ripgrep && brew install mcfly && brew install zplug && brew install autojump
&& brew install k && brew install git-delta && brew install --HEAD universal-ctags/universal-ctags/universal-ctags && brew install neovim
```

### .zshrc

```
$ zplug install
```

### .vimrc

- 아래 vim 명령어로 플러그인 설치

```
:PlugInstall
```
