filetype off                  " required

" Vim-Plug setting
call plug#begin('~/.vim/plugged')

"----------------------------------------------------------------------
"----------------------------------------------------------------------
"-------------------------Vim Installed Plugins------------------------
"----------------------------------------------------------------------
"----------------------------------------------------------------------

Plug 'airblade/vim-rooter'
Plug 'chrisbra/nrrwrgn'

" Extend vim
Plug 'wellle/targets.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'mhinz/vim-startify'

" Language plugins
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'quramy/tsuquyomi'
Plug 'hail2u/vim-css3-syntax'
Plug 'elzr/vim-json'
Plug 'quramy/vim-js-pretty-template'
Plug 'plasticboy/vim-markdown'
Plug 'mxw/vim-jsx'
Plug 'mattn/webapi-vim'
Plug 'othree/html5.vim'
Plug 'editorconfig/editorconfig-vim'

" Language utils
Plug 'rstacruz/sparkup'
Plug 'mattn/emmet-vim'

" Code auto suggestion, fix
" Plug 'ycm-core/YouCompleteMe'
Plug 'dense-analysis/ale'
Plug 'sirVer/ultisnips'
Plug 'honza/vim-snippets'

" Code display (format, indent, highlights)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'yggdroot/indentline'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-signify'
Plug 'rrethy/vim-illuminate'
Plug 'ap/vim-css-color'

" Code formatter
Plug 'chiel92/vim-autoformat'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'

" String auto pairing
Plug 'jiangmiao/auto-pairs'

" Theme
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'ojroques/vim-scrollstatus'

" File, project searching, string replacing
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' |
            \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Search String
Plug 'romainl/vim-cool'
Plug 'dyng/ctrlsf.vim'

" Argument inserting, order change
Plug 'PeterRincker/vim-argumentative'
Plug 'andrewradev/sideways.vim'

" Argument wrapping
Plug 'tpope/vim-surround'
Plug 'foosoft/vim-argwrap'

" Library
Plug 'vim-scripts/L9'
Plug 'camspiers/animate.vim'
Plug 'tpope/vim-repeat'

" Window Management (including tmux)
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-tbone'
Plug 'wesq3/vim-windowswap'
Plug 'simeji/winresizer'
Plug 'camspiers/lens.vim'
Plug 'preservim/vimux'
Plug 'edkolev/tmuxline.vim'

" Session Management
Plug 'tpope/vim-obsession'

" Cursor
Plug 'matze/vim-move'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Hangul
Plug 'johngrib/vim-f-hangul'

" Utility
Plug 'KabbAmine/vCoolor.vim'
Plug 'tpope/vim-abolish'
Plug 'preservim/tagbar' "required ctags as external dependency
Plug 'mbbill/undotree'
Plug 'easymotion/vim-easymotion'
Plug 'andrewradev/splitjoin.vim'
Plug 'wakatime/vim-wakatime'

" Unix command utils
Plug 'tpope/vim-eunuch'

" Buffer Management
Plug 'jeetsukumaran/vim-buffergator'
Plug 'vim-scripts/BufOnly.vim'
Plug 'bagrat/vim-buffet'

" Animation
Plug 'psliwka/vim-smoothie'

" Comment
Plug 'preservim/nerdcommenter'

" REPL, execute terminal
Plug 'jpalardy/vim-slime'

" Unused
" Plug 'thinca/vim-ambicmd'
" Plug 'vim-gutter' "mvim을 써야 에러 없이 작동하는 듯? 뭔가 자꾸 충돌나길래 지웠다.
" Plug 'dhruvasagar/vim-prosession' "vim-obsession 선호
" Plug 'wfxr/minimap.vim' "scrollstatus 선호.
" Plug 'vim-syntastic/syntastic' "ale 선호
" Plug 'sjl/gundo.vim' "undotree 선호

call plug#end()

"----------------------------------------------------------------------
"----------------------------------------------------------------------
"-------------------------Vim Settings---------------------------------
"----------------------------------------------------------------------
"----------------------------------------------------------------------

filetype plugin indent on    " required

" Vim default setting
" be iMproved, required
set nocompatible
set mouse=a
set cpo-=<
set number
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
"set termwinsize=10x0
set cursorlin
" 컬럼에도 하이라이트를 표시함
" set cursorcolumn
" bell 소리 끄고 visual bell로 표시
set visualbell
" swap 파일을 사용하지 않음
set noswapfile
set titlestring=%t
set scrolloff=3
set cmdheight=2

" 주석 다음 줄에 개행할 때 주석을 자동으로 다는 옵션을 끈다.
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" 창에 포커스가 돌아올 때 항상 명령 모드로 있게 한다.
" au FocusGained * :

" Vim setting - Insert Mode Shortcut
inoremap jj <Esc>

" Save undo info
if has('nvim')
	if !isdirectory($HOME."/.config/nvim")
		call mkdir($HOME."/.config/nvim", "", 0770)
	endif
	if !isdirectory($HOME."/.config/nvim/undo-dir")
		call mkdir($HOME."/.config/nvim/undo-dir", "", 0700)
	endif
	set undodir=~/.config/nvim/undo-dir
	set undofile
else
	if !isdirectory($HOME."/.vim")
		call mkdir($HOME."/.vim", "", 0770)
	endif
	if !isdirectory($HOME."/.vim/undo-dir")
		call mkdir($HOME."/.vim/undo-dir", "", 0700)
	endif
	set undodir=~/.vim/undo-dir
	set undofile
endif

" leader key mapping
let mapleader = ","

" Tab management shortcuts
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <C-t> :tabnew split<CR>

" Save shortcut
noremap <C-s> :w<CR>

" 셀렉션에 paste 하더라도 기존 텍스트 유지
vnoremap <leader>p "_dP

"----------------------------------------------------------------------
"----------------------------------------------------------------------
"-------------------------Vim Plugins Settings-------------------------
"----------------------------------------------------------------------
"----------------------------------------------------------------------

" vim-move
let g:move_key_modifier = 'C'

" vim-colors-solarized
" Prefer ayu-vim instead of below options
" syntax enable
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized

" vim-alrline
" Prefer vim-buffer instead of below options
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'

" vim-buffet
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
let g:buffet_max_plug = 10

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

" vim-syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" ayu-vim
set termguicolors
" let ayucolor="light"
" let ayucolor="mirage"
let ayucolor="dark"
colorscheme ayu

" ctrlp.vim
let g:ctrlp_map = '<c-p>'
" gitignore 내 파일들을 모두 무시하도록 함.
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" " YouCompleteMe
" let g:ycm_max_num_candidates = 5
" let g:ycm_max_num_identifier_candidates = 10
" let g:ycm_auto_trigger = 1
" let g:ycm_disable_for_files_larger_than_kb = 1000

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>f :YcmCompleter FixIt<CR>

" Below options are only available on 'c, cpp, objc, objcpp, cuda'
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>

" vim-minimap
" YouCompleteMe와 충돌하며, 다른 플러그인 설치할 때 마다 에러를 일으켜 비활성화
"let g:minimap_width = 10
"let g:minimap_auto_start = 1
"let g:minimap_auto_start_win_enter = 1

" vim-indent-guide
let g:indent_guides_enable_on_vim_startup = 1

" rainbow
let g:rainbow_active = 1

" vim-slime
let g:slime_target = "tmux"

" vim-session
let g:session_autosave = 'yes'

" nerdtree
let g:Tlist_WinWidth = 42
let g:NERDTreeWinSize = 42
let g:NERDTreeShowHidden = 1

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

nnoremap <C-B> :NERDTreeToggle<CR>
" nnoremap <C-F> :NERDTreeFind<CR>

" nerdtree-git-plugin
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
" you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusUseNerdFonts = 1

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 0

" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" fzf-vim
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
noremap <A-p> :GFiles<CR>

" nerdcommenter
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCommentEmptyLines = 1
let g:NERDToggleCheckAllLines = 1

" vim-json
let g:vim_json_syntax_conceal = 0

" vim-cool
let g:CoolTotalMatches = 1

" vim-scrollstatus
let g:airline_section_x = '%{ScrollStatus()}'

" Fugitive.vim

" tagbar
" F8 이후 맥북에서 사용 예정
nmap <F8> :TagbarToggle<CR>

" ale
" linter가 정상적으로 작동하지 않는다면 아래 옵션을 사용해 끌 것
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0
let g:ale_fixers = ['xo']
let g:ale_list_window_size = 5
let g:ale_linters = {
	\'javascript': ['xo'],
	\}

" ultisnips
let g:UltiSnipsExpandTrigger="<c-g>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ctrlsf.vim
nnoremap <C-F> :CtrlSF<space>
let g:ctrlsf_case_sensitive = 'no'
let g:ctrlsf_regex_pattern = 0
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_winsize = '30%'
let g:ctrlsf_position = 'right'
let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }
let g:ctrlsf_auto_close = {
	\ "normal" : 1,
	\ "compact": 1
	\}

"----------------------------------------------------------------------
"----------------------------------------------------------------------
"-------------------------Neovim Settings------------------------------
"----------------------------------------------------------------------
"----------------------------------------------------------------------

if has('nvim')
" nvim-treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = {"c", "javascript", "typescript"},
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = false,
	},
}
EOF

"----------------------------------------------------------------------
"----------------------------------------------------------------------
"-----------------------CoC.nvim Settings------------------------------
"----------------------------------------------------------------------
"----------------------------------------------------------------------

" coc.nvim extensions
" :CocInstall coc-json coc-tsserver
" let g:coc_suggest_disable = 1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

endif
