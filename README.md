# My Dev-Env for MacOS

Just personal development configs on macOS

**Table of Contents**

- [1. homebrew](#homebrew)
    - [1.1 homebrew installation](#homebrew-installation)
    - [1.2 homebrew dependencies](#homebrew-dependencies)
- [2. zsh](#zsh)
    - [2.1 zplug installation](#zplug-installation)
	- [2.2 zplug extensions](#zplug-extensions)
    - [2.3 oh-my-zsh extensions](#oh-my-zsh-extensions)
    - [2.4 zshrc](#zshrc)
- [3. tmux](#tmux)
    - [3.1 tpm installation](#tpm-installation)
    - [3.2 tmux extensions](#tmux-extensions)
- [4. node](#node)
- [5. editor](#editor)
    - [6.1 lunarvim](#lunarvim)
    - [6.2 neovim plugins](#neovim-plugins)
- [6. nerd-fonts](#nerd-fonts)
- [7. vs code extensions](#vs-code-extensions)
- [8. chrome extensions](#chrome-extensions)
- [9. shortcut references](#shortcut-references)
- [10. related](#related)

## [homebrew]

### [homebrew] installation

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

[Open .zshrc](./zsh/.zshrc)

### [zplug] installation

```
$ brew install zplug
```

### [zplug] extensions

- [djui/alias-tips](https://github.com/djui/alias-tips): An oh-my-zsh plugin to help remembering those aliases you defined once
- [lukechilds/zsh-better-npm-completion](https://github.com/lukechilds/zsh-better-npm-completion): Better completion for npm
- [junegunn/fzf](https://github.com/junegunn/fzf): 🌸 A command-line fuzzy finder
- [mafredri/zsh-async](https://github.com/mafredri/zsh-async): Because your terminal should be able to perform tasks asynchronously without external tools!
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): Fish-like autosuggestions for zsh
- [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): Fish shell like syntax highlighting for Zsh.
- [b4b4r07/enhancd](https://github.com/b4b4r07/enhancd): 🚀 A next-generation cd command with your interactive filter
- [supercrabtree/k](https://github.com/supercrabtree/k): k is the new l, yo
- [ogham/exa](https://github.com/ogham/exa): A modern replacement for ‘ls’.

### [oh-my-zsh] plugins

- [plugins/autojump](https://github.com/wting/autojump)
- [plugins/git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
- [plugins/web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search)
- [plugins/node](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/node)
- [lib/complete](https://github.com/ohmyzsh/ohmyzsh/tree/39b600e9e564db3dec265fcf2e3db4b5568dd93a/lib)
- [lib/key-bindings](https://github.com/ohmyzsh/ohmyzsh/tree/39b600e9e564db3dec265fcf2e3db4b5568dd93a/lib)
- [lib/directories](https://github.com/ohmyzsh/ohmyzsh/tree/39b600e9e564db3dec265fcf2e3db4b5568dd93a/lib)

## [tmux]

[Open .tmux.conf](./tmux/.tmux.conf)

### [tpm] installation

```
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### [tmux] plugins

- [tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank): Tmux plugin for copying to system clipboard
- [tmux-plugins/tmux-copycat](https://github.com/tmux-plugins/tmux-copycat): A plugin that enhances tmux search
- [tmux-plugins/tmux-open](https://github.com/tmux-plugins/tmux-open): Tmux key bindings for quick opening of a highlighted file or url
- [tmux-plugins/tmux-sensible](https://github.com/tmux-plugins/tmux-sensible): Basic tmux settings everyone can agree on
- [tmux-plugins/tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight): Plugin that highlights when you press tmux prefix key
- [tmux-plugins/tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control): Standard pane key-bindings for tmux
- [tmux-plugins/tmux-sessionist](https://github.com/tmux-plugins/tmux-sessionist): Lightweight tmux utils for manipulating sessions
- [tmux-plugins/tmux-urlview](https://github.com/tmux-plugins/tmux-urlview): Quickly open any url on your terminal window!
- [tmux-plugins/tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect): Persists tmux environment across system restarts.
- [tmux-plugins/tmux-continuum](https://github.com/tmux-plugins/tmux-plugins/tmux-continuum): Continuous saving of tmux environment. Automatic restore when tmux is started. Automatic tmux start when computer is turned on.
- [spywhere/tmux-named-snapshot](https://github.com/spywhere/tmux-named-snapshot): A tmux-resurrect extension for named snapshot support
- [arcticicestudio/nord-tmux](https://github.com/arcticicestudio/nord-tmux): An arctic, north-bluish clean and elegant tmux color theme.
- [nhdaly/tmux-better-mouse-mode](https://github.com/nhdaly/tmux-better-mouse-mode): A tmux plugin to better manage and configure the mouse.
- [IngoMeyer441/tmux-easy-motion](https://github.com/IngoMeyer441/tmux-easy-motion): Vim's easy-motion for tmux
- [laktak/extrakto](https://github.com/laktak/extrakto): extrakto for tmux - quickly select, copy/insert/complete text without a mouse

## [node]

- [np](https://github.com/sindresorhus/np): A better `npm publish`
- [npm-name-cli](https://github.com/sindresorhus/npm-name-cli): Check whether a package or organization name is available on npm
- [open-cli](https://github.com/sindresorhus/open-cli): Open stuff like URLs, files, executables. Cross-platform.
- [fkill-cli](https://github.com/sindresorhus/fkill-cli): Fabulously kill processes. Cross-platform.
- [@squoosh.cli](https://github.com/GoogleChromeLabs/squoosh): Make images smaller using best-in-class codecs, right in the browser.
- [broken-link-checker](https://github.com/stevenvachon/broken-link-checker): Find broken links, missing images, etc in your HTML.
- [case-cli](https://github.com/jopemachine/case-cli): Convert string case on your terminal as you want
- [tldr](https://github.com/tldr-pages/tldr): Simplified and community-driven man pages
- [trash-cli](https://github.com/sindresorhus/trash-cli): Move files and folders to the trash
- [pageres-cli](https://github.com/sindresorhus/pageres-cli): Capture website screenshots
- [yo](https://github.com/yeoman/yo): CLI tool for running Yeoman generators
- [n](https://github.com/tj/n): Interactively Manage All Your Node Versions

## vim installation, setting

### [lunarvim]

#### installation

- Prerequisite: [neovim], [rust], [node]

https://github.com/LunarVim/LunarVim/tree/a2714c3c382a1b6c9d4390eead924cc48ac594a3#install-in-one-command

#### config

- [Open config.lua](./lunarvim/config.lua)

### core extensions

- [Lunarvim core extensions](https://www.lunarvim.org/plugins/01-core-plugins-list.html)

### nvim plugins

- [ntpeters/vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace): Better whitespace highlighting for Vim
- [ap/vim-css-color](https://github.com/ap/vim-css-color): Preview colours in source code while editing
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim): Indent guides for Neovim
- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align): 🌻 A Vim alignment plugin
- [edkolev/tmuxline.vim](https://github.com/edkolev/tmuxline.vim): Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
- [johngrib/vim-f-hangul](https://github.com/johngrib/vim-f-hangul): vim에서 f로 한글을 검색하자
- [tpope/vim-obsession](https://github.com/tpope/vim-obsession): obsession.vim: continuously updated session files
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim): Smooth scrolling neovim plugin written in lua
- [wellle/targets.vim](https://github.com/wellle/targets.vim): Vim plugin that provides additional text objects
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat): repeat.vim: enable repeating supported plugin maps with "."
- [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion): Vim motions on speed!
- [ggandor/lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim): 🌌 Next-generation motion plugin using incremental input processing, allowing for unparalleled speed with minimal cognitive effort
- [ellisonleao/glow.nvim](https://github.com/ellisonleao/glow.nvim): A markdown preview directly in your neovim.
- [andrewradev/splitjoin.vim](https://github.com/andrewradev/splitjoin.vim): Switch between single-line and multiline forms of code
- [nacro90/numb.nvim](https://github.com/nacro90/numb.nvim): Peek lines just when you intend
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag): Use treesitter to auto close and auto rename html tag
- [mbbill/undotree](https://github.com/mbbill/undotree): The undo history visualizer for VIM
- [wakatime/vim-wakatime](https://github.com/wakatime/vim-wakatime): Vim plugin for automatic time tracking and metrics generated from your programming activity.
- [tpope/vim-surround](https://github.com/tpope/vim-surround): surround.vim: Delete/change/add parentheses/quotes/XML-tags/much more with ease
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi): Multiple cursors plugin for vim/neovim
- [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre): Find the enemy and replace them with dark power.
- [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim): Plugin for calling lazygit from within neovim.
- [f-person/git-blame.nvim](https://github.com/f-person/git-blame.nvim): Git Blame plugin for Neovim written in Lua
- [pwntester/octo.nvim](https://github.com/pwntester/octo.nvim): Edit and review GitHub issues and pull requests from the comfort of your favorite editor
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim): 🚦 A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.

## nerd-fonts installation

- [NotoMonoNerdFontCompleteM](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Noto/Mono)

## [chrome] extensions

### favorites

- [vimium-c](https://github.com/gdh1995/vimium-c): A keyboard shortcut browser extension for keyboard-based navigation and tab operations with an advanced omnibar
- [notifier-for-github](https://github.com/sindresorhus/notifier-for-github): Browser extension - Get notified about new GitHub notifications
- [refined-github](https://github.com/refined-github/refined-github): Browser extension that simplifies the GitHub interface and adds useful features
- [github-npm-stats](https://github.com/katranci/github-npm-stats): Chrome extension that displays npm download stats on GitHub

*[All extensions](./chrome/chrome-extensions.html)*

## [vs code] extensions

### favorites

- [gitlens](https://github.com/gitkraken/vscode-gitlens): Visualize code authorship at a glance via Git blame annotations
- [vscode-ava](https://github.com/SamVerschueren/vscode-ava): Snippets for AVA
- [live-server](https://github.com/ritwickdey/vscode-live-server): Launch a development local Server with live reload feature for static & dynamic pages.
- [prettier-vscode](https://github.com/prettier/prettier-vscode): Visual Studio Code extension for Prettier
- [vscode-material-icon-theme](https://github.com/PKief/vscode-material-icon-theme): Available on the VSCode Marketplace
- [path-intellisense](https://github.com/ChristianKohler/PathIntellisense): Visual Studio Code plugin that autocompletes filenames
- [vscode-pull-request-github](https://github.com/Microsoft/vscode-pull-request-github): GitHub Pull Requests for Visual Studio Code
- [gitHistoryVSCode](https://github.com/DonJayamanne/gitHistoryVSCode): Git History for Visual Studio Code
- [vscode-extensions-open-in-browser](https://github.com/SudoKillMe/vscode-extensions-open-in-browser): 
- [OneDark-Pro](https://github.com/Binaryify/OneDark-Pro): Atom's iconic One Dark theme for Visual Studio Code
- [vscode-npm-scripts](https://github.com/Microsoft/vscode-npm-scripts): VSCode extension for running npm-scripts and validating the package.json files.
- [NpmIntellisense](https://github.com/ChristianKohler/NpmIntellisense): Visual Studio Code plugin that autocompletes npm modules in import statements
- [vscode-ext-color-highlight](https://github.com/enyancc/vscode-ext-color-highlight): Extension adds colored border around css/web colors in the editor
- [vscode-markdownlint](https://github.com/DavidAnson/vscode-markdownlint): Markdown linting and style checking for Visual Studio Code
- [better-comments](https://github.com/aaron-bond/better-comments)
- [vscode-git-graph](https://github.com/mhutchie/vscode-git-graph): Project Manager Extension for Visual Studio Code
- [vscode-project-manager](https://github.com/alefragnani/vscode-project-manager): Project Manager Extension for Visual Studio Code
- [vscode-restclient](https://github.com/Huachao/vscode-restclient): REST Client Extension for Visual Studio Code
- [vscode-gitignore](https://github.com/CodeZombieCH/vscode-gitignore): A simple extension for Visual Studio Code that lets you pull .gitignore files
- [vscode-gitblame](https://github.com/Sertion/vscode-gitblame): Visual Studio Code Extension - See Git Blame info in status bar.
- [path-autocomplete](https://github.com/ionutvmi/path-autocomplete): Path autocomplete for visual studio code.

*[All extensions](./vscode/vscode-extensions)*

## [alfred] workflows

### favorites

- [alfred-fkill](https://github.com/SamVerschueren/alfred-fkill): Alfred 3 workflow to fabulously search
- [alfred-chromium-workflow](https://github.com/jopemachine/alfred-chromium-workflow): Chromium based browser workflow for Alfred 4
- [alfred-xcode](https://github.com/sindresorhus/alfred-xcode): Alfred 3 workflow to open Xcode projects, workspaces, and playgrounds
- [alfred-github-workflow](https://github.com/gharlan/alfred-github-workflow): GitHub Workflow for Alfred 4

## Shortcut references

- [lazygit](https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md)
- [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua#defaults)

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
