"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                  _ __  __        ____                     "
"         _     __(_) /_/ /___  __/ __/___  _  __           "
"        | | /| / / / __/ __/ / / / /_/ __ \| |/_/          "
"        | |/ |/ / / /_/ /_/ /_/ / __/ /_/ />  <            "
"        |__/|__/_/\__/\__/\__, /_/  \____/_/|_|            "
"                         /____/                            "
"                                                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set background=dark

for ext in ['bundles', 'functions', 'maps']
    if filereadable(expand('~/.vim/vimrc.' . ext))
        execute 'source ' . expand('~/.vim/vimrc.' . ext)
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
set shortmess=aoOtI
set laststatus=2

" expand tab to space
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set splitright
set splitbelow

set wildmenu
set wildmode=list:longest,full

" folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable

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
set encoding=utf-8,gbk
set fileencoding=utf-8,gbk
set fileencodings=utf-8,gbk

set iskeyword-=.                       " '.' is an end of word designator
set iskeyword-=#                       " '#' is an end of word designator
set iskeyword-=-                       " '-' is an end of word designator

set cscopeprg='gtags-cscope'
set cscopetag

let mapleader = ','

let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeQuickOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']

let NERDSpaceDelims = 1

let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'

let g:indentLine_color_term = 242
let g:indentLine_color_gui  = '#60666b'
let g:indentLine_char       = '┆'       " | ┆

"let g:SuperTabDefaultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<c-tab>'
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

let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']

let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1

let g:pymode_rope_complete_on_dot = 0
" let g:pymode_rope_completion = 0

if has("win32") and !has("gui_running")
    colorscheme flatlandia
end

" Monkey Patching
" original 239
hi LineNr ctermfg=242

if has("gui_running")
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L

    set columns=100
    set lines=28

    set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 10
end

if has("win32") and has("gui_running")
    set guifont=Sauce_Code_Powerline:h10:cANSI

    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim

    language messages zh_CN.utf-8
end

autocmd FileType ruby,eruby,yml,html,css,scss,sass setlocal shiftwidth=2 softtabstop=2
autocmd FileType html,css,eruby EmmetInstall
