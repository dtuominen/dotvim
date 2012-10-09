" my .vimrc file
" by: Chris Honey <chrishoney@gmail.com>

" Enable pathogen to load plugins from ~/.vim/bundle
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" Various settings
set nocompatible
set showcmd
set showmode
set number
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
syntax enable

" Incremental search, set width to 79, turn off gui toolbar
set incsearch
set guioptions-=T

" solarized settings
set background=dark
colorscheme solarized

"python
autocmd BufRead *.py set cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd BufRead *.py set shiftwidth=4 softtabstop=4 tabstop=8
autocmd BufRead *.py set smarttab expandtab
autocmd BufRead *.py set autoindent textwidth=79

" other filetype specific settings
au BufNewFile,BufRead .bashrc,.bash_profile,.bash_logout,.bash_aliases,.bash_functions set filetype=sh
au BufNewFile,BufRead *.html setfiletype htmldjango

" map jj to esc in insert mode
:imap jj <Esc>
" various keybindings
let mapleader = ','
map <leader>p :set paste<cr>i
map <leader>P :set nopaste<cr>
map <leader>h :set hlsearch<cr>
map <leader>H :set nohlsearch<cr>
map <leader>d :setfiletype htmldjango<cr>
map <leader>s :set filetype=sh<cr>
map <leader>n :set nu!<cr>
map <leader>rd :read !
map <C-h> <C-w><Left>
map <C-j> <C-w><Down>
map <C-k> <C-w><Up>
map <C-l> <C-w><Right>
map <leader>[ <C-w>-
map <leader>] <C-w>+
