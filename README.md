# My Dev-Env for MacOS

These are my miscellaneous config files and personal installation scripts.

I wrote this because of saving and sharing my configs.

```
                    'c.          igyubong@igyubong-ui-MacBookPro.local
                 ,xNMM.          -------------------------------------
               .OMMMMo           OS: macOS 12.4 21F79 x86_64
               OMMM0,            Host: MacBookPro16,1
     .;loddo:' loolloddol;.      Kernel: 21.5.0
   cKMMMMMMMMMMNWMMMMMMMMMM0:    Uptime: 3 hours, 37 mins
 .KMMMMMMMMMMMMMMMMMMMMMMMWd.    Packages: 243 (brew)
 XMMMMMMMMMMMMMMMMMMMMMMMX.      Shell: fish 3.4.1
;MMMMMMMMMMMMMMMMMMMMMMMM:       Resolution: 1792x1120@2x
:MMMMMMMMMMMMMMMMMMMMMMMM:       DE: Aqua
.MMMMMMMMMMMMMMMMMMMMMMMMX.      WM: Quartz Compositor
 kMMMMMMMMMMMMMMMMMMMMMMMMWd.    WM Theme: Blue (Dark)
 .XMMMMMMMMMMMMMMMMMMMMMMMMMMk   Terminal: tmux
  .XMMMMMMMMMMMMMMMMMMMMMMMMK.   CPU: Intel i9-9880H (16) @ 2.30GHz
    kMMMMMMMMMMMMMMMMMMMMMMd     GPU: Intel UHD Graphics 630, AMD Radeon Pro 5500M
     ;KMMMMMMMWXXWMMMMMMMk.      Memory: 9688MiB / 16384MiB
       .cooc,.    .,coo:.

```

**Table of Contents**

- [1. Command Line Environment](#command-line-environment)
    - [1.1 Command Line Dev Environment](#command-line-dev-environment)
    - [1.2 Command Line Applications](#command-line-applications)
- [2. Graphical User Interface Applications](#graphical-user-interface-applications)
- [3. Fish Plugins](#fish-plugins)
- [4. Tmux Plugins](#tmux-plugins)
- [5. NeoVim Plugins](#vim-plugins)
- [6. Vs Code Extensions](#vs-code-extensions)
- [7. Chrome Extensions](#chrome-extensions)
- [8. Alfred Workflows](#alfred-workflows)
- [9. Popclip](#popclip)
- [10. Related Shortcut References](#related-shortcut-references)
- [11. Related Config Compilations](#related-config-compilations)
- [12. Related Awesome List](#related-awesome-list)

## Command Line Environment

### Command Line Dev Environment

[lunarVim] + [tmux] + [alacritty]

- [alacritty]: A cross-platform, OpenGL terminal emulator.
- [delta]: A syntax-highlighting pager for git, diff, and grep output
- [fd]: A simple, fast and user-friendly alternative to 'find'
- [forgit]: A utility tool powered by fzf for using git interactively.
- [hub]: A command-line tool that makes git easier to use with GitHub.
- [lazygit]: Simple terminal UI for git commands
- [lunarvim]: An IDE layer for Neovim with sane defaults. Completely free and community driven.
- [ranger]: A VIM-inspired filemanager for the console
- [ripgrep]: ripgrep recursively searches directories for a regex pattern while respecting your gitignore
- [starship]: The minimal, blazing-fast, and infinitely customizable prompt for any shell!
- [tmux]: Open-source terminal multiplexer for Unix-like operating systems.

### Command Line Applications

- [broken-link-checker]: Find broken links, missing images, etc in your HTML.
- [fkill-cli]: Fabulously kill processes. Cross-platform.
- [glow]: Render markdown on the CLI, with pizzazz!
- [mas]: Mac App Store command line interface
- [n]: Interactively Manage All Your Node Versions
- [navi]: An interactive cheatsheet tool for the command-line
- [np]: A better `npm publish`
- [npm-name-cli]: Check whether a package or organization name is available on npm
- [open-cli]: Open stuff like URLs, files, executables. Cross-platform.
- [pageres-cli]: Capture website screenshots
- [tldr]: Simplified and community-driven man pages
- [trash-cli]: Move files and folders to the trash
- [yo]: CLI tool for running Yeoman generators

## Graphical User Interface Applications

- [alfred](https://www.alfredapp.com/): Award-winning app for macOS which boosts your efficiency with hotkeys, keywords, text expansion and more.
- [altTab](https://alt-tab-macos.netlify.app/): Open source window switcher with window previews.
- [netnewswire](https://netnewswire.com/): A free and open source RSS reader for Mac, iPhone, and iPad.
- [popclip](https://pilotmoon.com/popclip/): Instantly copy & paste, and access actions like search, spelling, dictionary and many, many more.
- [xbar](https://github.com/matryer/xbar): Put the output from any script or program into your macOS Menu Bar (the BitBar reboot).

## [Fish] Plugins

- [wfxr/forgit](https://github.com/wfxr/forgit): A utility tool powered by fzf for using git interactively.
- [PatrickF1/fzf.fish](https://github.com/PatrickF1/fzf.fish): Augment your fish command line with fzf key bindings.
- [jethrokuan/z](https://github.com/jethrokuan/z): Pure-fish z directory jumping

## [Tmux] Plugins

- [IngoMeyer441/tmux-easy-motion](https://github.com/IngoMeyer441/tmux-easy-motion): Vim's easy-motion for tmux
- [laktak/extrakto](https://github.com/laktak/extrakto): extrakto for tmux - quickly select, copy/insert/complete text without a mouse
- [nhdaly/tmux-better-mouse-mode](https://github.com/nhdaly/tmux-better-mouse-mode): A tmux plugin to better manage and configure the mouse.
- [tmux-plugins/tmux-copycat](https://github.com/tmux-plugins/tmux-copycat): A plugin that enhances tmux search
- [tmux-plugins/tmux-open](https://github.com/tmux-plugins/tmux-open): Tmux key bindings for quick opening of a highlighted file or url
- [tmux-plugins/tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control): Standard pane key-bindings for tmux
- [tmux-plugins/tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect): Persists tmux environment across system restarts.
- [tmux-plugins/tmux-sensible](https://github.com/tmux-plugins/tmux-sensible): Basic tmux settings everyone can agree on
- [tmux-plugins/tmux-sessionist](https://github.com/tmux-plugins/tmux-sessionist): Lightweight tmux utils for manipulating sessions
- [tmux-plugins/tmux-urlview](https://github.com/tmux-plugins/tmux-urlview): Quickly open any url on your terminal window!
- [tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank): Tmux plugin for copying to system clipboard

## NeoVim Plugins

### favorites

- [ap/vim-css-color](https://github.com/ap/vim-css-color): Preview colours in source code while editing
- [ellisonleao/glow.nvim](https://github.com/ellisonleao/glow.nvim): A markdown preview directly in your neovim.
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim): A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
- [ggandor/lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim): Next-generation motion plugin using incremental input processing, allowing for unparalleled speed with minimal cognitive effort
- [johngrib/vim-f-hangul](https://github.com/johngrib/vim-f-hangul): vim에서 f로 한글을 검색하자
- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align): A Vim alignment plugin
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim): Smooth scrolling neovim plugin written in lua
- [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim): Plugin for calling lazygit from within neovim.
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim): Indent guides for Neovim
- [mbbill/undotree](https://github.com/mbbill/undotree): The undo history visualizer for VIM
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi): Multiple cursors plugin for vim/neovim
- [ntpeters/vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace): Better whitespace highlighting for Vim
- [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre): Find the enemy and replace them with dark power.
- [pwntester/octo.nvim](https://github.com/pwntester/octo.nvim): Edit and review GitHub issues and pull requests from the comfort of your favorite editor
- [tpope/vim-obsession](https://github.com/tpope/vim-obsession): obsession.vim: continuously updated session files
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat): repeat.vim: enable repeating supported plugin maps with "."
- [tpope/vim-surround](https://github.com/tpope/vim-surround): surround.vim: Delete/change/add parentheses/quotes/XML-tags/much more with ease
- [wakatime/vim-wakatime](https://github.com/wakatime/vim-wakatime): Vim plugin for automatic time tracking and metrics generated from your programming activity.
- [wellle/targets.vim](https://github.com/wellle/targets.vim): Vim plugin that provides additional text objects
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag): Use treesitter to auto close and auto rename html tag

#### [Lunarvim Core Plugins](https://www.lunarvim.org/plugins/01-core-plugins-list.html)

## [Chrome] Extensions

### favorites

- [vimium-c](https://github.com/gdh1995/vimium-c): A keyboard shortcut browser extension for keyboard-based navigation and tab operations with an advanced omnibar
- [notifier-for-github](https://github.com/sindresorhus/notifier-for-github): Browser extension - Get notified about new GitHub notifications
- [refined-github](https://github.com/refined-github/refined-github): Browser extension that simplifies the GitHub interface and adds useful features
- [github-npm-stats](https://github.com/katranci/github-npm-stats): Chrome extension that displays npm download stats on GitHub
- [darkreader](https://github.com/darkreader/darkreader): Dark Reader Chrome and Firefox extension

## [Vs Code] Extensions

### favorites

- [better-comments](https://github.com/aaron-bond/better-comments): Improve your code commenting by annotating with alert, informational, TODOs, and more!
- [gitlens](https://github.com/gitkraken/vscode-gitlens): Visualize code authorship at a glance via Git blame annotations
- [live-server](https://github.com/ritwickdey/vscode-live-server): Launch a development local Server with live reload feature for static & dynamic pages.
- [path-autocomplete](https://github.com/ionutvmi/path-autocomplete): Path autocomplete for visual studio code.
- [vscode-ext-color-highlight](https://github.com/enyancc/vscode-ext-color-highlight): Extension adds colored border around css/web colors in the editor
- [vscode-gitblame](https://github.com/Sertion/vscode-gitblame): Visual Studio Code Extension - See Git Blame info in status bar.
- [vscode-material-icon-theme](https://github.com/PKief/vscode-material-icon-theme): Available on the VSCode Marketplace
- [vscode-project-manager](https://github.com/alefragnani/vscode-project-manager): Project Manager Extension for Visual Studio Code
- [vscode-remote](https://github.com/Microsoft/vscode-remote-release): Open any folder in WSL, in a Docker container, or on a remote machine using SSH and take advantage of VS Code's full feature set

## [Alfred] Workflows

### favorites

- [alfred-chromium-workflow](https://github.com/jopemachine/alfred-chromium-workflow): Chromium based browser workflow for Alfred 4
- [alfred-fkill](https://github.com/SamVerschueren/alfred-fkill): Alfred 3 workflow to fabulously search
- [alfred-github-workflow](https://github.com/gharlan/alfred-github-workflow): GitHub Workflow for Alfred 4
- [alfred-xcode](https://github.com/sindresorhus/alfred-xcode): Alfred 3 workflow to open Xcode projects, workspaces, and playgrounds

## [Popclip]

- [popclip-naver-dict](https://github.com/jopemachine/popclip-naver-dict)
- [popclip-npm](https://github.com/jopemachine/popclip-npm)

[popclip extensions](https://pilotmoon.com/popclip/extensions/)

## Related Shortcut References

- [lazygit cheatsheet](https://github.com/jesseduffield/lazygit/blob/master/docs/keybindings/Keybindings_en.md)
- [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua#defaults)
- [jethrokuan/fzf](https://github.com/jethrokuan/fzf)

## Related Config Compilations

- [rdlester/dotfiles](https://github.com/rdlester/dotfiles)
- [gpakosz/.tmux](https://github.com/gpakosz/.tmux)
- [makccr/dot](https://github.com/makccr/dot)

## Related Awesome List

- [awesome-mac](https://github.com/jaywcjlove/awesome-mac)
- [awesome-nodejs](https://github.com/sindresorhus/awesome-nodejs)
- [open-source-mac-os-apps](https://github.com/serhii-londar/open-source-mac-os-apps)
- [my-mac-os](https://github.com/nikitavoloboev/my-mac-os)
- [awesome-fish](https://github.com/jorgebucaran/awsm.fish)

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
[popclip]: https://apps.apple.com/kr/app/popclip/id445189367?mt=12
[fish]: https://github.com/fish-shell/fish-shell
[omf]: https://github.com/oh-my-fish/oh-my-fish
[oh-my-fish]: https://github.com/oh-my-fish/oh-my-fish
[alacritty]: https://github.com/alacritty/alacritty
[fisher]: https://github.com/jorgebucaran/fisher
[np]: https://github.com/sindresorhus/np
[npm-name-cli]: https://github.com/sindresorhus/npm-name-cli
[open-cli]: https://github.com/sindresorhus/open-cli
[fkill-cli]: https://github.com/sindresorhus/fkill-cli
[@squoosh.cli]: https://github.com/GoogleChromeLabs/squoosh
[broken-link-checker]: https://github.com/stevenvachon/broken-link-checker
[case-cli]: https://github.com/jopemachine/case-cli
[tldr]: https://github.com/tldr-pages/tldr
[trash-cli]: https://github.com/sindresorhus/trash-cli
[pageres-cli]: https://github.com/sindresorhus/pageres-cli
[yo]: https://github.com/yeoman/yo
[n]: https://github.com/tj/n
