# My Dev-Env for MacOS

Just personal development configs on macOS

**Table of Contents**

- [1. homebrew](#homebrew)
    - [1.1 homebrew 설치](#homebrew-설치)
    - [1.2 homebrew dependencies](#homebrew-dependencies)
- [2. zsh](#zsh)
    - [2.1 zplug 설치](#zplug-설치)
	- [2.2 zplug extensions](#zplug-extensions)
    - [2.3 oh-my-zsh extensions](#oh-my-zsh-extensions)
    - [2.4 zshrc](#zshrc)
- [3. tmux](#tmux)
    - [3.1 tpm 설치](#tpm-설정)
    - [3.2 tmux extensions](#tmux-extensions)
- [4. npm extensions](#npm-extensions)
- [5. vim 에디터 설치 및 설정](#vim-에디터-설치-및-설정)
    - [6.1 lunarvim](#lunarvim)
    - [6.2 neovim](#neovim)
    - [6.3 vim](#vim)
- [6. nerd-fonts](#nerd-fonts)
- [7. vs code extensions](#vs-code-extensions)
- [8. chrome extensions](#chrome-extensions)

## [homebrew]

### [homebrew] 설치

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### [homebrew] dependencies

- [vim]
- [neovim]: Vim-fork focused on extensibility and usability
- [lunarvim]: An IDE layer for Neovim with sane defaults. Completely free and community driven.
- [tmux]
- [homebrew]: 🍻 Default formulae for the missing package manager for macOS (or Linux)
- [mas]: 📦 Mac App Store command line interface
- [oh-my-zsh]: 🙃 A delightful community-driven (with 2,000+ contributors) framework for managing your zsh configuration.
- [mcfly]: Fly through your shell history. Great Scott!
- [ranger]: A VIM-inspired filemanager for the console
- [iTerm2]: iTerm2 is a terminal emulator for Mac OS X that does amazing things.
- [forgit]: 💤 A utility tool powered by fzf for using git interactively.
- [delta]: A syntax-highlighting pager for git, diff, and grep output
- [agnoster]: A ZSH theme designed to disclose information contextually, with a powerline aesthetic
- [starship]: ☄🌌️ The minimal, blazing-fast, and infinitely customizable prompt for any shell!
- [ripgrep]: ripgrep recursively searches directories for a regex pattern while respecting your gitignore
- [fd]: A simple, fast and user-friendly alternative to 'find'
- [navi]: An interactive cheatsheet tool for the command-line
- [lazygit]: Simple terminal UI for git commands
- [autojump]: A cd command that learns - easily navigate directories from the command line
- [vs code]: Visual Studio Code
- [nerd fonts]: Iconic font aggregator, collection, & patcher
- [glow]: Render markdown on the CLI, with pizzazz! 💅
- [hub]: A command-line tool that makes git easier to use with GitHub.

```
$ ./install-homebrew-dependencies.sh
```

## [zsh]

### [zplug] 설치

```
$ brew install zplug
```

### [zplug] extensions

- [djui/alias-tips](https://github.com/djui/alias-tips)
- [lukechilds/zsh-better-npm-completion](https://github.com/lukechilds/zsh-better-npm-completion)
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [mafredri/zsh-async](https://github.com/mafredri/zsh-async)
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [b4b4r07/enhancd](https://github.com/b4b4r07/enhancd)
- [supercrabtree/k](https://github.com/supercrabtree/k)
- [ogham/exa](https://github.com/ogham/exa)

### [oh-my-zsh] plugins

- [plugins/autojump](https://github.com/wting/autojump)
- [plugins/git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
- [plugins/web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search)
- [plugins/node](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/node)
- [lib/complete](https://github.com/ohmyzsh/ohmyzsh/tree/39b600e9e564db3dec265fcf2e3db4b5568dd93a/lib)
- [lib/key-bindings](https://github.com/ohmyzsh/ohmyzsh/tree/39b600e9e564db3dec265fcf2e3db4b5568dd93a/lib)
- [lib/directories](https://github.com/ohmyzsh/ohmyzsh/tree/39b600e9e564db3dec265fcf2e3db4b5568dd93a/lib)

### `.zshrc`

[zshrc 열기](./zshrc)

## [tmux] 설정

### [tpm] 설치

```
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### [tmux] extensions

- [tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank): Tmux plugin for copying to system clipboard
- [tmux-plugins/tmux-copycat](https://github.com/tmux-plugins/tmux-copycat): A plugin that enhances tmux search
- [tmux-plugins/tmux-open](https://github.com/tmux-plugins/tmux-open): Tmux key bindings for quick opening of a highlighted file or url
- [tmux-plugins/tmux-sensible](https://github.com/tmux-plugins/tmux-sensible): Basic tmux settings everyone can agree on
- [tmux-plugins/tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight): Plugin that highlights when you press tmux prefix key
- [tmux-plugins/tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control): Standard pane key-bindings for tmux
- [arcticicestudio/nord-tmux](https://github.com/arcticicestudio/nord-tmux): An arctic, north-bluish clean and elegant tmux color theme.
- [nhdaly/tmux-better-mouse-mode](https://github.com/nhdaly/tmux-better-mouse-mode): A tmux plugin to better manage and configure the mouse.
- [IngoMeyer441/tmux-easy-motion](https://github.com/IngoMeyer441/tmux-easy-motion): Vim's easy-motion for tmux

## [npm] extensions

- [np](https://github.com/sindresorhus/np): A better `npm publish`
- [npm-name-cli](https://github.com/sindresorhus/npm-name-cli): Check whether a package or organization name is available on npm
- [open-cli](https://github.com/sindresorhus/open-cli): Open stuff like URLs, files, executables. Cross-platform.
- [fkill-cli](https://github.com/sindresorhus/fkill-cli): Fabulously kill processes. Cross-platform.
- [@squoosh.cli](https://github.com/GoogleChromeLabs/squoosh): 
- [broken-link-checker](https://github.com/stevenvachon/broken-link-checker): Find broken links, missing images, etc in your HTML.
- [case-cli](https://github.com/jopemachine/case-cli): Convert string case on your terminal as you want
- [tldr](https://github.com/tldr-pages/tldr): Simplified and community-driven man pages
- [trash-cli](https://github.com/sindresorhus/trash-cli): Move files and folders to the trash
- [pageres-cli](https://github.com/sindresorhus/pageres-cli): Capture website screenshots
- [yo](https://github.com/yeoman/yo): CLI tool for running Yeoman generators
- [n](https://github.com/tj/n): Interactively Manage All Your Node Versions

## [vim] 에디터 설치 및 설정

### [lunarvim]

- [config.lua](./lunarvim/config.lua)

- [neovim], [rust], [node] 설치 필요

- [설치](https://github.com/LunarVim/LunarVim/tree/a2714c3c382a1b6c9d4390eead924cc48ac594a3#install-in-one-command)

### [neovim]

- [vim-plug] 설치

```
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- python 3 provider 설치

```
$ python3 -m pip install --user --upgrade pynvim
```

### [vim]

[.vimrc](./vim/.vimrc)

## nerd-fonts 설치

- [NotoMonoNerdFontCompleteM](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Noto/Mono)

## [chrome] extensions

- [vimium-c](https://github.com/gdh1995/vimium-c)
- [notifier-for-github](https://github.com/sindresorhus/notifier-for-github)
- [refined-github](https://github.com/refined-github/refined-github)
- [github-npm-stats](https://github.com/katranci/github-npm-stats)

[전체 리스트](./chrome/chrome-extensions.html)

## [vs code] extensions

[리스트](./vscode/vscode-extensions)

- [codelens]

## [alfred] workflows

- [alfred-fkill](https://github.com/SamVerschueren/alfred-fkill)
- [alfred-chrome-workflow](https://github.com/jopemachine/alfred-chrome-workflow)
- [chrome control](https://github.com/bit2pixel/chrome-control)
- [alfred-xcode](https://github.com/sindresorhus/alfred-xcode)
- [alfred-github-workflow](https://github.com/gharlan/alfred-github-workflow)

## Related

- https://github.com/rdlester/dotfiles
- https://github.com/gpakosz/.tmux
- https://github.com/makccr/dot

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
[lazygit]: https://github.com/jesseduffield/lazygit
[navi]: https://github.com/denisidoro/navi
[vim-plug]: https://github.com/junegunn/vim-plug
[zsh]: https://www.zsh.org/
[zplug]: https://github.com/zplug/zplug
[packer]: https://github.com/wbthomason/packer.nvim
[vs code]: https://code.visualstudio.com/
[mas]: https://github.com/mas-cli/mas
[nerd fonts]: https://github.com/ryanoasis/nerd-fonts
[git]: https://git-scm.com/
[glow]: https://github.com/ellisonleao/glow.nvim
[rust]: https://github.com/rust-lang/rust
[node]: https://github.com/nodejs/node
[k]: https://github.com/supercrabtree/k
[tpm]: https://github.com/tmux-plugins/tpm
[npm]: https://github.com/npm/cli
[chrome]: https://www.google.com/intl/en/chrome/
[hub]: https://github.com/github/hub
[alfred]: https://www.alfredapp.com/

