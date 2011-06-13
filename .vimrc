" my .vimrc file
" by: Chris Honey <chrishoney@gmail.com>
" Enable pathogen to load plugins from ~/.vim/bundle
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
" Show the ruler, show commands, show current mode, show line numbers

set nocompatible
set ruler
set showcmd
set showmode
set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Enable filetype plugins and plugins
filetype on
filetype plugin indent on
" Incremental search, set width to 79, turn off gui toolbar

set incsearch
set textwidth=79
set guioptions-=T

" Colorscheme (set t_Co=256 enables 256 color support)
set t_Co=256
:colorscheme blackboard

" Load NERDTree
" autocmd VimEnter * NERDTree

"Begin Custom Section
"Python File Settings (PEP-8)

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd BufRead *.py set autoindent tabstop=4 expandtab shiftwidth=4 softtabstop=4 smarttab
" Function key bindings (<F2> - <F12>)

" <F2> - Insert # at start of line
map <F2> :setfiletype htmldjango<CR>
map <F3> ~h<Esc>
" <F4> - Toggle Line numbers
map <F4> 3i<Space><Esc>
map <F5> :NERDTreeToggle<CR>
map <F6> :w<CR>
map <F7> :wa<CR>
map <F12> :wa<CR>:qa!<CR>
