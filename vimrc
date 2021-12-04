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

call vundle#end()            " required

" Vim-Plug setting
call plug#begin('~/.vim/plugged')

Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/L9'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ycm-core/YouCompleteMe'
Plug 'bagrat/vim-buffet'

call plug#end()

filetype plugin indent on    " required

" Vim setting
set mouse=a
set number
set relativenumber
set autoindent
" convert Ttab -> Space
" set retab
set smarttab
set smartcase
set ruler
set encoding=UTF-8
set fileencodings=utf8,euc-kr
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start

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

