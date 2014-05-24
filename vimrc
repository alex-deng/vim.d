"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____  _                            __     ___            "
" / ___|| | ___   __ _  ___ _ __      \ \   / (_)_ __ ___   "
" \___ \| |/ _ \ / _` |/ _ \ '__|      \ \ / /| | '_ ` _ \  "
"  ___) | | (_) | (_| |  __/ |     _    \ V / | | | | | | | "
" |____/|_|\___/ \__, |\___|_|    (_)    \_/  |_|_| |_| |_| "
"                |___/                                      "
"                                                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" Appearence
"

syntax on
set number
set ruler
set cursorline
set relativenumber
set shortmess=atI
set laststatus=2

if has("gui_running")
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L

    set columns=100
    set lines=28

    set guifont=Source\ Code\ Pro\ for\ Powerline\ Semi-Bold\ 10
end

" expand tab to space
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" indent
set smartindent
set autoindent
set cindent

" search
set hlsearch
set incsearch
set smartcase
set ignorecase

" utils
set autoread
set showmatch
set pastetoggle=<F5>

" encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8


""""""""""""""""""""""""""""""""
" Let vundle manage my plugins "
""""""""""""""""""""""""""""""""

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'sickill/vim-monokai'
Plugin 'ervandew/supertab'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'

call vundle#end()
filetype plugin indent on

colorscheme monokai

let g:nerdtree_tabs_open_on_console_startup=1

let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'

let g:SuperTabDefaultCompletionType='context'
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'
let g:SuperTabNoCompleteAfter = ['^', ',', '\s']

"
" map
"
map  <F2> :NERDTreeToggle<CR>
imap <F2> <ESC><F2>
