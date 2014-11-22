" Normal options {{{
" Absolutely esential {{{
filetype plugin indent on
set nocompatible

" }}}
" Basic {{{
scriptencoding utf-8
syntax on
set encoding=utf-8
set history=700
set autoread
set cursorline
set visualbell
set number
set relativenumber
set listchars=eol:$,tab:>-,trail:·,extends:❯,precedes:❮
set fillchars=diff:⣿,vert:│
set lazyredraw
set list
set ignorecase
set hidden
set incsearch
set mouse=a
set showmatch
set hlsearch
set matchtime=2
set ffs=unix,dos,mac
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set laststatus=2
set showcmd
set autoindent
set backspace=indent,eol,start
set nrformats-=octal
set dictionary=/usr/share/dict/words

" }}}
" WiLd menu stuff {{{
"
" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore+=.hg,.git,.svn " Version Control
set wildignore+=*.aux,*.out,*.toc " LaTeX intermedite files
set wildignore+=*~ " Bakcup files and stuff
set wildignore+=*.o " Compiled files
set wildignore+=__pycache__,*.pyc " Python compiled files

" }}}
" folding stuff {{{
" set fold method marker
set foldmethod=marker
" }}}
" }}}
" Confuration for plugins {{{
" Plug stuff {{{
call plug#begin('~/.vim/plugged')

" My plugs here:
" Make the bar prettier
Plug 'bling/vim-airline'
" Better git suport
Plug 'tpope/vim-fugitive'
" Undo and redo tree
Plug 'sjl/gundo.vim'
" Fuzzy find for files
Plug 'kien/ctrlp.vim'
" Check if my code is syntasticly correct
Plug 'scrooloose/syntastic'
" Fast move inside vim
Plug 'Lokaltog/vim-easymotion'
" Tags for coding (TODO no idea how to use it yet)
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpen' }
" Multiple cursors support
Plug 'terryma/vim-multiple-cursors'
" Comment and uncomment code
Plug 'tomtom/tcomment_vim'
" Tab completition when writing
Plug 'SirVer/ultisnips'
" Snippets for ultisnip
Plug 'honza/vim-snippets'
" Tabularize with :Tab /{regex} or visual select and the same
Plug 'junegunn/vim-easy-align'
" Tpope surround plugin for improved surround tags 
Plug 'tpope/vim-surround'
" Better start screen
Plug 'mhinz/vim-startify'
" Autocompletition for python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
" Check pep8 in python files
Plug 'nvie/vim-flake8', { 'for': 'python' }
" Open the stupid competition menu automatically
Plug 'vim-scripts/AutoComplPop'
" Colorscheme
Plug 'flazz/vim-colorschemes'
" Better bookmarks
Plug 'MattesGroeger/vim-bookmarks'
" Peer programming he he he
"Plug 'FredKSchott/CoVim'

call plug#end()

" }}}
" vim-easy-align {{{
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)
" }}}
" vim-airline {{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'
" }}}
" ctrlp.vim {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
" }}}
" colorscheme {{{
colorscheme badwolf
"    }}}
" jedi-vim {{{
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>v"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"
"    }}}
" vim-bookmarks {{{
let g:bookmark_sign = '⚑'
let g:bookmark_annotation_sign = '#'
let g:bookmark_save_per_working_dir = 0
let g:bookmark_auto_save = 1
let g:bookmark_auto_save_file = $HOME .'/.vim-bookmarks'
let g:bookmark_auto_close = 0
let g:bookmark_highlight_lines = 0
let g:bookmark_show_warning = 1
let g:bookmark_center = 1
" highlight BookmarkSign ctermbg=255 ctermfg=255
" highlight BookmarkAnnotationSign ctermbg=255 ctermfg=255
" highlight BookmarkLine ctermbg=255 ctermfg=255
" highlight BookmarkAnnotationLine ctermbg=255 ctermfg=255
" }}}
" }}}
" Mappings {{{

let mapleader = "\<space>"

" Replace Esc for jk
imap jk <Esc>

" toggle paste with F2
set pastetoggle=<F2>

" Smart way to move between windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" Set Y to como se debe
nnoremap H ^
nnoremap L $
nnoremap Y y$
nnoremap K <nop>
nnoremap <silent> S i<CR><esc>k:s/ \+$//<CR>$

" Tabs navigation
nmap <silent> <leader>b :bprevious<CR>
nmap <silent> <leader>n :bnext<CR>

" Folding focus
nnoremap <leader>z zMzvzz

" Train myself
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Forgot to sudo
command W w !sudo tee % >/dev/null

" }}}
" Filetype-specific {{{
" Python {{{
" Set fold method to indent if filetype is python
autocmd filetype python set foldmethod=indent
autocmd filetype python set colorcolumn=80
" }}}
" }}}
