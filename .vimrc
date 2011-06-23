" my .vimrc file
" by: Chris Honey <chrishoney@gmail.com>

" Enable pathogen to load plugins from ~/.vim/bundle
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Enable filetype plugins and plugins
filetype plugin indent on

"Enable omnicompletion
set ofu=pythoncomplete#Complete

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

" Incremental search, set width to 79, turn off gui toolbar
set incsearch
set textwidth=79
set guioptions-=T

" Colorscheme (set t_Co=256 enables 256 color support)
" set t_Co=256
:colorscheme desert

" Load NERDTree
" autocmd VimEnter * NERDTree

"Begin Custom Section
"Python File Settings (PEP-8)

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd BufRead *.py set autoindent tabstop=4 expandtab shiftwidth=4 softtabstop=4 smarttab

" Function key bindings (<F2> - <F12>)

" <F2> - Toggle syntax highlighting for django templates
map <F2> :setfiletype htmldjango<CR>

" <F3> - Insert 60 # symbols for python comment boxes
map <F3> 60i#<Esc>

" <F4> - Toggle Line numbers
map <F4> :set nu!

" <F5> - Toggle NERDTree path browser
map <F5> :NERDTreeToggle<CR>

" <F6> - Quicksave file
map <F6> :w<CR>

" <F7> - Save all open files
map <F7> :wa<CR>

" <F10> - Save all open files and quit
map <F10> :wa<CR>:qa!<CR>

" <F12> - Open up ScrollColors to pick a colorscheme
map <F12> :SCROLL<CR>
