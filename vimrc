"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____  _                            __     ___            "
" / ___|| | ___   __ _  ___ _ __      \ \   / (_)_ __ ___   "
" \___ \| |/ _ \ / _` |/ _ \ '__|      \ \ / /| | '_ ` _ \  "
"  ___) | | (_) | (_| |  __/ |     _    \ V / | | | | | | | "
" |____/|_|\___/ \__, |\___|_|    (_)    \_/  |_|_| |_| |_| "
"                |___/                                      "
"                                                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set background=dark

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Appearance
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'kristijanhusak/vim-multiple-cursors'

" Vimshell
Plugin 'Shougo/vimproc'
Plugin 'Shougo/vimshell'

" Colorscheme
Plugin 'sickill/vim-monokai'
Plugin 'jordwalke/flatlandia'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Gtags
Plugin 'vim-scripts/gtags.vim'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Template
Plugin 'aperezdc/vim-template'

" Syntax Highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" HTML
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'hail2u/vim-css3-syntax'

" Javascript
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'

" Ruby
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'

" Python
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'

" Erlang
Plugin 'jimenezrick/vimerl'

" Elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattreduce/vim-mix'

" Misc
Plugin 'tpope/vim-markdown'

call vundle#end()
filetype plugin indent on

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

    set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 10
end

" expand tab to space
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set splitright
set splitbelow

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

set iskeyword-=.                       " '.' is an end of word designator
set iskeyword-=#                       " '#' is an end of word designator
set iskeyword-=-                       " '-' is an end of word designator

colorscheme flatlandia

" Monkey Patching
" original 239
hi LineNr ctermfg=242

let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeQuickOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']

let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'

let g:indentLine_color_term = 242
let g:indentLine_color_gui  = '#60666b'
let g:indentLine_char       = '┆'       " ¦ ┆ ︙ │

let g:SuperTabDefaultCompletionType='context'
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'
let g:SuperTabNoCompleteAfter = ['^', ',', '\s']

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" emmet-vim
let g:user_emmet_install_global = 0

" Templates
let g:templates_no_builtin_templates = 1
" let g:templates_directory = '~/.vim/templates'

"
" map
"
imap <F2> <ESC><F2>
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>

" Gtags
map <M-\.> :GtagsCursor<CR>

" Window navigation
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

autocmd FileType ruby,eruby,yml,html,css,scss,sass setlocal shiftwidth=2 softtabstop=2
autocmd FileType html,css,eruby EmmetInstall

"
" Useful Functions
"

function! StripTrailingWhitespace()
    let _s=@/
    let l = line(".")
    let c = col(".")

    %s/\s\+$//e

    let @/=_s
    call cursor(l, c)
endfunction
