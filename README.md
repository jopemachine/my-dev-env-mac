# My dev-env configs for MacOS

This document is just a personal compilation of my personal favorite tools for dev.

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

- [1. Command Line Dev Environment](#command-line-environment)
- [2. Command Line Applications](#command-line-applications)
- [3. Graphical User Interface Applications](#graphical-user-interface-applications)
- [4. Fish Plugins](#fish-plugins)
- [5. Tmux Plugins](#tmux-plugins)
- [6. Neovim Plugins](#vim-plugins)
- [7. Visual Studio Code Extensions](#visual-studio-code)
- [8. Chrome Extensions](#chrome-extensions)
- [9. Alfred Workflows](#alfred-workflows)
- [10. Web Applications](#web-applications)
- [11. References](#references)

## Command Line Dev Environment

[lunarVim] + [tmux] + [alacritty]

- [lunarvim]: An IDE layer for Neovim with sane defaults. Completely free and community driven.
- [alacritty]: A cross-platform, OpenGL terminal emulator.
- [tmux]: Open-source terminal multiplexer for Unix-like operating systems.

<hr />

- ⭐ [lazygit]: Simple terminal UI for git commands
- ⭐ [ranger]: A VIM-inspired filemanager for the console
- ⭐ [fig]: Fig adds IDE-style autocomplete to your existing terminal. Move faster with Fig.
- [bat]: A cat(1) clone with wings.
- [delta]: A syntax-highlighting pager for git, diff, and grep output
- [exa]: A modern replacement for ‘ls’.
- [fd]: A simple, fast and user-friendly alternative to 'find'
- [forgit]: A utility tool powered by fzf for using git interactively.
- [hub]: A command-line tool that makes git easier to use with GitHub.
- [homebrew]: The missing package manager for macOS (or Linux)
- [ripgrep]: ripgrep recursively searches directories for a regex pattern while respecting your gitignore
- [starship]: The minimal, blazing-fast, and infinitely customizable prompt for any shell!

## Command Line Applications

- [ack]: A tool like grep, optimized for programmers.
- [broken-link-checker]: Find broken links, missing images, etc in your HTML.
- [fkill-cli]: Fabulously kill processes. Cross-platform.
- [glow]: Render markdown on the CLI, with pizzazz!
- [mas]: Mac App Store command line interface
- [n]: Interactively Manage All Your Node Versions
- [nativefier]: Make any web page a desktop application
- [navi]: An interactive cheatsheet tool for the command-line
- [open-cli]: Open stuff like URLs, files, executables. Cross-platform.
- [pageres-cli]: Capture website screenshots
- [trash-cli]: Move files and folders to the trash
- [yo]: CLI tool for running Yeoman generators

## Graphical User Interface Applications

- ⭐ [alfred]: Award-winning app for macOS which boosts your efficiency with hotkeys, keywords, text expansion and more.
- ⭐ [altTab]: Open source window switcher with window previews.
- [better-touch-tool]: Great, feature-packed app that allows you to configure many gestures for your Magic Mouse, Macbook Trackpad, Magic Trackpad and also Mouse Gestures for normal mice.
- [keyboard-lock]: Simple keyboard locker
- [magnet]: Window manager that keeps your workspace organized.
- [notion]: Notion is the all-in-one workspace. From notes, tasks, wikis, to database, Notion is all you need. Works great for teams and individuals.
- [plash]: Make any website your Mac desktop wallpaper
- [popclip]: Instantly copy & paste, and access actions like search, spelling, dictionary and many, many more.
- [postman]: Postman is an API platform for building and using APIs. Postman simplifies each step of the API lifecycle and streamlines collaboration so you can create better APIs—faster.
- [quick-look-plugins]: List of useful Quick Look plugins for developers
- [xbar]: Put the output from any script or program into your macOS Menu Bar (the BitBar reboot).

## [Fish] Plugins

- ⭐ [PatrickF1/fzf.fish](https://github.com/PatrickF1/fzf.fish): Augment your fish command line with fzf key bindings.
- [wfxr/forgit](https://github.com/wfxr/forgit): A utility tool powered by fzf for using git interactively.
- [jethrokuan/z](https://github.com/jethrokuan/z): Pure-fish z directory jumping
- [gazorby/fish-abbreviation-tips](https://github.com/gazorby/fish-abbreviation-tips): Help you remembering your abbreviations

## [Tmux] Plugins

- ⭐ [laktak/extrakto](https://github.com/laktak/extrakto): extrakto for tmux - quickly select, copy/insert/complete text without a mouse
- ⭐ [tmux-plugins/tmux-sessionist](https://github.com/tmux-plugins/tmux-sessionist): Lightweight tmux utils for manipulating sessions
- [nhdaly/tmux-better-mouse-mode](https://github.com/nhdaly/tmux-better-mouse-mode): A tmux plugin to better manage and configure the mouse.
- [tmux-plugins/tmux-open](https://github.com/tmux-plugins/tmux-open): Tmux key bindings for quick opening of a highlighted file or url
- [tmux-plugins/tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control): Standard pane key-bindings for tmux
- [tmux-plugins/tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect): Persists tmux environment across system restarts.
- [tmux-plugins/tmux-sensible](https://github.com/tmux-plugins/tmux-sensible): Basic tmux settings everyone can agree on
- [tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank): Tmux plugin for copying to system clipboard

## [Neovim] Plugins

- ⭐ [ggandor/lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim): Next-generation motion plugin using incremental input processing, allowing for unparalleled speed with minimal cognitive effort
- ⭐ [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim): Plugin for calling lazygit from within neovim.
- [ellisonleao/glow.nvim](https://github.com/ellisonleao/glow.nvim): A markdown preview directly in your neovim.
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim): A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align): A Vim alignment plugin
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim): Smooth scrolling neovim plugin written in lua
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim): Indent guides for Neovim
- [mbbill/undotree](https://github.com/mbbill/undotree): The undo history visualizer for VIM
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi): Multiple cursors plugin for vim/neovim
- [ntpeters/vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace): Better whitespace highlighting for Vim
- [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre): Find the enemy and replace them with dark power.
- [pwntester/octo.nvim](https://github.com/pwntester/octo.nvim): Edit and review GitHub issues and pull requests from the comfort of your favorite editor
- [tpope/vim-obsession](https://github.com/tpope/vim-obsession): obsession.vim: continuously updated session files
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat): repeat.vim: enable repeating supported plugin maps with "."
- [tpope/vim-surround](https://github.com/tpope/vim-surround): surround.vim: Delete/change/add parentheses/quotes/XML-tags/much more with ease
- [wellle/targets.vim](https://github.com/wellle/targets.vim): Vim plugin that provides additional text objects

### ⭐ [Lunarvim Core Plugins](https://www.lunarvim.org/plugins/01-core-plugins-list.html)

## [Chrome] Extensions

- ⭐ [vimium-c](https://github.com/gdh1995/vimium-c): A keyboard shortcut browser extension for keyboard-based navigation and tab operations with an advanced omnibar
- [notifier-for-github](https://github.com/sindresorhus/notifier-for-github): Browser extension - Get notified about new GitHub notifications
- [refined-github](https://github.com/refined-github/refined-github): Browser extension that simplifies the GitHub interface and adds useful features
- [github-npm-stats](https://github.com/katranci/github-npm-stats): Chrome extension that displays npm download stats on GitHub
- [darkreader](https://github.com/darkreader/darkreader): Dark Reader Chrome and Firefox extension

## [Visual Studio Code] Extensions

- [better-comments](https://github.com/aaron-bond/better-comments): Improve your code commenting by annotating with alert, informational, TODOs, and more!
- [gitlens](https://github.com/gitkraken/vscode-gitlens): Visualize code authorship at a glance via Git blame annotations
- [live-server](https://github.com/ritwickdey/vscode-live-server): Launch a development local Server with live reload feature for static & dynamic pages.
- [vscode-project-manager](https://github.com/alefragnani/vscode-project-manager): Project Manager Extension for Visual Studio Code
- [vscode-remote](https://github.com/Microsoft/vscode-remote-release): Open any folder in WSL, in a Docker container, or on a remote machine using SSH and take advantage of VS Code's full feature set

## [Alfred] Workflows

- [alfred-chromium-workflow](https://github.com/jopemachine/alfred-chromium-workflow): Chromium based browser workflow for Alfred 4
- [alfred-fkill](https://github.com/SamVerschueren/alfred-fkill): Alfred 3 workflow to fabulously search
- [alfred-github-workflow](https://github.com/gharlan/alfred-github-workflow): GitHub Workflow for Alfred 4
- [alfred-xcode](https://github.com/sindresorhus/alfred-xcode): Alfred 3 workflow to open Xcode projects, workspaces, and playgrounds

## Web Applications

- [lowlighter/metrics](https://github.com/lowlighter/metrics): An infographics generator with 30+ plugins and 200+ options to display stats about your GitHub account and render them as SVG, Markdown, PDF or JSON!
- [wakatime.com](https://wakatime.com/): Dashboards for developers
- [regex101.com](https://regex101.com/): Regular expression tester with syntax highlighting, explanation, cheat sheet for PHP/PCRE, Python, GO, JavaScript, Java, C#/.NET

## References

- ⭐ [jaywcjlove/awesome-mac](https://github.com/jaywcjlove/awesome-mac)
- ⭐ [ibraheemdev/modern-unix](https://github.com/ibraheemdev/modern-unix)
- ⭐ [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- ⭐ [nikitavoloboev/my-mac-os](https://github.com/nikitavoloboev/my-mac-os)
- [gpakosz/.tmux](https://github.com/gpakosz/.tmux)
- [jorgebucaran/awesome-fish](https://github.com/jorgebucaran/awsm.fish)
- [learn-anything/alfred-workflows](https://github.com/learn-anything/alfred-workflows)
- [serhii-londar/open-source-mac-os-apps](https://github.com/serhii-londar/open-source-mac-os-apps)
- [webpro/awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)

[@squoosh.cli]: https://github.com/GoogleChromeLabs/squoosh
[ack]: https://github.com/samaaron/ack
[agnoster]: https://github.com/agnoster/agnoster-zsh-theme
[alacritty]: https://github.com/alacritty/alacritty
[alfred]: https://www.alfredapp.com/
[altTab]: https://alt-tab-macos.netlify.app/
[appcleaner]: https://freemacsoft.net/appcleaner/
[autojump]: https://github.com/wting/autojump
[bat]: https://github.com/sharkdp/bat
[better-touch-tool]: https://folivora.ai/
[broken-link-checker]: https://github.com/stevenvachon/broken-link-checker
[case-cli]: https://github.com/jopemachine/case-cli
[chrome]: https://www.google.com/intl/en/chrome/
[delta]: https://github.com/dandavison/delta
[enhancd]: https://github.com/b4b4r07/enhancd
[exa]: https://github.com/ogham/exa
[fd]: https://github.com/sharkdp/fd
[fig]: https://fig.io/
[fish]: https://github.com/fish-shell/fish-shell
[fisher]: https://github.com/jorgebucaran/fisher
[fkill-cli]: https://github.com/sindresorhus/fkill-cli
[forgit]: https://github.com/wfxr/forgit
[git]: https://git-scm.com/
[glow]: https://github.com/ellisonleao/glow.nvim
[homebrew]: https://github.com/Homebrew/brew
[hub]: https://github.com/github/hub
[iTerm2]: https://iterm2.com/
[k]: https://github.com/supercrabtree/k
[keyboard-lock]: https://keylock.io/
[lazygit]: https://github.com/jesseduffield/lazygit
[lsd]: https://github.com/Peltoche/lsd
[lunarvim]: https://github.com/LunarVim/LunarVim
[magnet]: https://magnet.crowdcafe.com/
[mas]: https://github.com/mas-cli/mas
[mcfly]: https://github.com/cantino/mcfly
[n]: https://github.com/tj/n
[nativefier]: https://github.com/nativefier/nativefier
[navi]: https://github.com/denisidoro/navi
[neovim]: https://github.com/neovim/neovim
[nerd fonts]: https://github.com/ryanoasis/nerd-fonts
[netnewswire]: https://netnewswire.com/
[node]: https://github.com/nodejs/node
[notion]: https://www.notion.so/
[np]: https://github.com/sindresorhus/np
[npm-name-cli]: https://github.com/sindresorhus/npm-name-cli
[npm]: https://github.com/npm/cli
[oh-my-fish]: https://github.com/oh-my-fish/oh-my-fish
[oh-my-zsh]: https://github.com/ohmyzsh/ohmyzsh
[omf]: https://github.com/oh-my-fish/oh-my-fish
[open-cli]: https://github.com/sindresorhus/open-cli
[packer]: https://github.com/wbthomason/packer.nvim
[pageres-cli]: https://github.com/sindresorhus/pageres-cli
[plash]: https://github.com/sindresorhus/Plash
[popclip]: https://apps.apple.com/kr/app/popclip/id445189367?mt=12
[popclip]: https://github.com/sindresorhus/Plash
[postman]: https://www.postman.com/
[quick-look-plugins]: https://github.com/sindresorhus/quick-look-plugins
[ranger]: https://github.com/ranger/ranger
[ripgrep]: https://github.com/BurntSushi/ripgrep
[rust]: https://github.com/rust-lang/rust
[starship]: https://github.com/starship/starship
[tldr]: https://github.com/tldr-pages/tldr
[tmux]: https://github.com/tmux/tmux
[tpm]: https://github.com/tmux-plugins/tpm
[trash-cli]: https://github.com/sindresorhus/trash-cli
[vim-plug]: https://github.com/junegunn/vim-plug
[vim]: https://github.com/vim/vim
[Visual Studio Code]: https://code.visualstudio.com/
[xbar]: https://github.com/matryer/xbar
[yo]: https://github.com/yeoman/yo
[zplug]: https://github.com/zplug/zplug
[zsh]: https://www.zsh.org/
