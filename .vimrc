set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Bundle 'matze/vim-move'

call vundle#end()            " required

" Vim-Plug setting
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-rooter'
Plug 'altercation/vim-colors-solarized'
Plug 'andrewradev/sideways.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'bagrat/vim-buffet'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'chiel92/vim-autoformat'
Plug 'chrisbra/nrrwrgn'
Plug 'easymotion/vim-easymotion'
Plug 'elzr/vim-json'
Plug 'foosoft/vim-argwrap'
Plug 'godlygeek/tabular'
Plug 'hail2u/vim-css3-syntax'
Plug 'johngrib/vim-f-hangul'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/vim-easy-align'
Plug 'KabbAmine/vCoolor.vim'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'luochen1990/rainbow'
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'psliwka/vim-smoothie'
Plug 'qpkorr/vim-renamer'
Plug 'quramy/tsuquyomi'
Plug 'quramy/vim-js-pretty-template'
Plug 'romainl/vim-cool'
Plug 'rstacruz/sparkup'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'sgur/ctrlp-extensions.vim'
Plug 'shougo/deol.nvim'
Plug 'simeji/winresizer'
Plug 'sjl/gundo.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'takac/vim-hardtime'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/BufOnly.vim'
Plug 'vim-scripts/L9'
Plug 'vim-syntastic/syntastic'
Plug 'wesq3/vim-windowswap'
Plug 'ycm-core/YouCompleteMe'
Plug 'yggdroot/indentline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'PeterRincker/vim-argumentative'
Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-tbone'
Plug 'dyng/ctrlsf.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'tpope/vim-obsession'
Plug 'pangloss/vim-javascript'
" Plug 'thinca/vim-ambicmd'
" Plug 'wfxr/minimap.vim'

call plug#end()

filetype plugin indent on    " required

" Vim setting
set mouse=a
set cpo-=<
set number
set relativenumber
set autoindent
" convert Ttab -> Space
" set retab
set smarttab
set ruler
set encoding=UTF-8
set fileencodings=utf8,euc-kr
set cindent
" 탭을 4개의 스페이스로 확장한다.
" set expandtab
set tabstop=4
set shiftwidth=4
" 라인의 시작과 끝의 들여쓰기를 백스페이스로 지움.
set backspace=indent,eol,start
" 검색된 결과 강조 표시.
set hlsearch
" 검색시 대소문자를 구분하지 않음.
set ignorecase
" 검색어를 입력할 때마다 일치하는 문자열을 강조해서 표시.
set incsearch
" ignore 옵션이 켜져있더라도 검색어에 대문자가 있다면 정확히 일치하는 문자열을 찾음.
set smartcase
set clipboard=unnamed " vim에서 복사한 내용이 클립보드에 저장
" Linux에선 아래 줄 적용할 것
" set clipboard=unnamedplus
set history=1000
" 터미널이 아래 Split 되도록 만들고 사이즈를 작게 조절함
set splitbelow
set termwinsize=10x0
set cursorline
" 컬럼에도 하이라이트를 표시함
" set cursorcolumn

" Vim setting - Insert Mode Shortcut
inoremap jj <Esc>

let mapleader = ","

"** nerd-tree setting
nnoremap <C-f> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

"** vim-hardtime setting
let g:hardtime_default_on = 0

"** vim-move setting
"** vim-move가 ctrl키 + 방향키로 라인 위치를 변경할 수 있게 해 줌
let g:move_key_modifier = 'C'

"** vim-colors-solarized
" Prefer ayu-vim instead of below lines
" syntax enable
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized

"** vim-alrline
" Prefer vim-buffer instead of below lines
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'

"** vim-buffet
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
let g:buffet_max_plug = 10

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
"noremap <C-w> :bw<CR>
noremap <C-t> :tabnew split<CR>

nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

" 셀렉션에 paste 하더라도 기존 텍스트 유지
vnoremap <leader>p "_dP

"** vim-syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"** nercommenter
filetype plugin on

"** ayu-vim
set termguicolors
" let ayucolor="light"
" let ayucolor="mirage"
let ayucolor="dark"
colorscheme ayu

"** ctrlp.vim
"** gitignore 내 파일들을 모두 무시하도록 함.
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"** YouCompleteMe
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>ff :YcmCompleteMe FixIt<CR>

nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>

"** vim-minimap
"다른 플러그인 설치할 때 마다 에러를 일으켜 비활성화
"let g:minimap_width = 10
"let g:minimap_auto_start = 1
"let g:minimap_auto_start_win_enter = 1

"** vim-indent-guide
let g:indent_guides_enable_on_vim_startup = 1

"** rainbow
let g:rainbow_active = 1

"** vim-slimde
let g:slime_target = "tmux"

"** vim-session
let g:session_autosave = 'yes'

"** nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0

"** vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 0

" Let's save undo info!
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile
