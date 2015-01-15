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

for ext in ['bundles', 'functions', 'maps']
    if filereadable(expand('~/.vim/vimrc.' . ext))
        execute 'source vimrc.' . ext
    end
endfor


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
let g:indentLine_char       = '┆'       " ¦ ┆ 

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


colorscheme flatlandia

" Monkey Patching
" original 239
hi LineNr ctermfg=242

autocmd FileType ruby,eruby,yml,html,css,scss,sass setlocal shiftwidth=2 softtabstop=2
autocmd FileType html,css,eruby EmmetInstall
