" my .vimrc file
" by: Chris Honey <chrishoney@gmail.com>

syntax on

" Enable pathogen to load plugins from ~/.vim/bundle
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Enable filetype plugins and plugins
filetype plugin indent on

"Enable omnicompletion
set ofu=pythoncomplete#Complete

" Show the ruler, show commands, show current mode, show line numbers, enable syntax highlighting
set nocompatible
set ruler
set showcmd
set showmode
set number
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

" Incremental search, set width to 79, turn off gui toolbar
set incsearch
set guioptions-=T

" Colorscheme (set t_Co=256 enables 256 color support)
set t_Co=256
:colorscheme desert256

" Load NERDTree
" autocmd VimEnter * NERDTree

"Begin Custom Section
"Python File Settings (PEP-8)

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class textwidth=79
autocmd BufRead *.py set autoindent tabstop=8 expandtab shiftwidth=4 softtabstop=4 smarttab textwidth=79

" Bash config file syntax highlighting
au BufNewFile,BufRead .bashrc,.bash_profile,.bash_logout,.bash_aliases,.bash_functions set filetype=sh
au BufNewFile,BufRead *.html setfiletype htmldjango

" KEY BINDINGS
" map jj to esc in insert mode
:imap jj <Esc>
" map leader to ,
let mapleader = ','
" various keybindings
map <leader>p :set paste<cr>
map <leader>P :set nopaste<cr>
map <leader>h :set hlsearch<cr>
map <leader>H :set nohlsearch<cr>
map <leader>d :setfiletype htmldjango<cr>
map <leader>s :set filetype=sh<cr>
map <C-h> <C-w><Left>
map <C-j> <C-w><Down>
map <C-k> <C-w><Up>
map <C-l> <C-w><Right>
