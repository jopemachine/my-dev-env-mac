" Vundle setting
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

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

call vundle#end()            " required

" Vim-Plug setting
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/L9'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ycm-core/YouCompleteMe'

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
set fileencodings=utf8,euc-kr
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start

" Vim setting - Insert Mode Shortcut
inoremap jj <Esc>

nnoremap gn :bnext<CR>
nnoremap gp :bprev<CR>
nnoremap gw :bw<CR>

"** nerd-tree setting
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"** vim-hardtime setting
let g:hardtime_default_on = 0

"** vim-move setting
let g:move_key_modifier = 'C'

"** vim-colors-solarized
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized


