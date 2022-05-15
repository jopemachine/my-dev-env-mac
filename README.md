# My Dev-Env for MacOS

Just personal development configs on macOS

## `homebrew` 설치

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## `homebrew` dependencies

- [vim], [neovim], [lunarvim]: 소스 코드 편집기
- [tmux]
- [homebrew]: mac 패키지 관리자
- [oh-my-zsh]
- [mcfly]: 명령어 히스토리 fuzzy search
- [ranger]: `vim` 기반 TUI 파일 탐색기
- [iTerm2]
- [forgit]: `git` 명령어 축약 및 향상
- [delta]: `git` 변경사항 (diff) 하이라이팅
- [agnoster] or [starship]: `zsh` 테마
- [ripgrep]: 모던 `grep` replacement
- [fd]: 모던 `find` replacement
- [navi]
- Nerd font file

```
$ brew install ripgrep && brew install mcfly && brew install zplug && brew install autojump && brew install k && brew install git-delta && brew install --HEAD universal-ctags/universal-ctags/universal-ctags && brew install neovim && brew install navi
```

## `zplug` 설치

```
$ brew install zplug
```

[참고](https://github.com/zplug/zplug/tree/c4dea766566b168a32dbfa8d10335e525ce39fcc#using-homebrew-os-x)

### `zplug` dependencies

- [plugins/git](https://github.com/plugins/git)
- [lib/complete](https://github.com/lib/complete)
- [lib/key-bindings](https://github.com/lib/key-bindings)
- [lib/directories](https://github.com/lib/directories)
- [djui/alias-tips](https://github.com/djui/alias-tips)
- [lukechilds/zsh-better-npm-completion](https://github.com/lukechilds/zsh-better-npm-completion)
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [mafredri/zsh-async](https://github.com/mafredri/zsh-async)
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [plugins/autojump](https://github.com/plugins/autojump): 디렉토리 명 추론해 바로 이동
- [b4b4r07/enhancd](https://github.com/b4b4r07/enhancd): 모던 `cd` replacement
- [supercrabtree/k](https://github.com/supercrabtree/k): 모던 `ls` replacement
- [ogham/exa](https://github.com/ogham/exa): 모던 `ls` replacement

아래 명령어를 통해 플러그인 설치
```
$ zplug install
```

## `.zshrc` 설정

[zshrc 열기](./zshrc)

## `vim` 설치 및 설정

### LunarVim

- `Neovim`, `rust`, `node` 설치 필요

- [설치](https://github.com/LunarVim/LunarVim/tree/a2714c3c382a1b6c9d4390eead924cc48ac594a3#install-in-one-command)

### Neovim

- `VimPlug` 설치

```
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- Python 3 provider 설치

``` $ python3 -m pip install --user --upgrade pynvim ```

### Vim

### `.vimrc` 설정

[vimrc 열기](./vimrc)

### `vim-plug` (또는 `packer`) 를 통해 플러그인 설치

- 아래 vim 명령어로 플러그인 설치

```
:PlugInstall
```

## Nerdfont 설치

- [NotoMonoNerdFontCompleteM](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Noto/Mono)

[oh-my-zsh]: https://github.com/ohmyzsh/ohmyzsh
[agnoster]: https://github.com/agnoster/agnoster-zsh-theme
[starship]: https://github.com/starship/starship
[vim]: https://github.com/vim/vim
[neovim]: https://github.com/neovim/neovim
[lunarvim]: https://github.com/LunarVim/LunarVim
[tmux]: https://github.com/tmux/tmux
[mcfly]: https://github.com/cantino/mcfly
[autojump]: https://github.com/wting/autojump
[exa]: https://github.com/ogham/exa
[lsd]: https://github.com/Peltoche/lsd
[iTerm2]: https://iterm2.com/
[forgit]: https://github.com/wfxr/forgit
[delta]: https://github.com/dandavison/delta
[ranger]: https://github.com/ranger/ranger
[enhancd]: https://github.com/b4b4r07/enhancd
[fd]: https://github.com/sharkdp/fd
[ripgrep]: https://github.com/BurntSushi/ripgrep
[homebrew]: https://github.com/Homebrew/brew
[navi]: https://github.com/denisidoro/navi
[k]: localhost
