" Vundle setting
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'jremmen/vim-ripgrep'
Plugin 'kien/ctrlp.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'takac/vim-hardtime'
Bundle 'matze/vim-move'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mxw/vim-jsx'
Plugin 'plasticboy/vim-markdown'
Plugin 'yggdroot/indentline'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'luochen1990/rainbow'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/webapi-vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'shougo/deol.nvim'
Plugin 'Raimondi/delimitMate'
Plugin 'romainl/vim-cool'
Plugin 'wfxr/minimap.vim'

call vundle#end()            " required

" Vim-Plug setting
call plug#begin('~/.vim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/L9'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ycm-core/YouCompleteMe'
Plug 'bagrat/vim-buffet'
Plug 'tmsvg/pear-tree'
Plug 'psliwka/vim-smoothie'
" Plug 'johngrib/vim-f-hangul'

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
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start " 라인의 시작과 끝의 들여쓰기를 백스페이스로 지움.
set hlsearch " 검색된 결과 강조 표시.
set ignorecase " 검색시 대소문자를 구분하지 않음. 
set incsearch " 검색어를 입력할 때마다 일치하는 문자열을 강조해서 표시.
set smartcase " ignore 옵션이 켜져있더라도 검색어에 대문자가 있다면 정확히 일치하는 문자열을 찾음.
set clipboard=unnamed " vim에서 복사한 내용이 클립보드에 저장
" Linux에선 아래 줄 적용할 것

" set clipboard=unnamedplus 
set history=1000
" 터미
set splitbelow
set termwinsize=10x0

" Vim setting - Insert Mode Shortcut
inoremap jj <Esc>

nnoremap bp :bp<CR>
nnoremap bn :bn<CR>
nnoremap bw :bw<CR>

let mapleader = ","

"** nerd-tree setting
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"** vim-hardtime setting
let g:hardtime_default_on = 0

"** vim-move setting
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

"** vim-buffer
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>

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
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"** ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"** YouCompleteMe
nnoremap gg :YouCompleteMe Goto<CR>
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>f :YouCompleteMe FixIt<CR>

nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>

"** vim-delimitMate
let delimitMate_expand_cr=1

"** vim-minimap
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

