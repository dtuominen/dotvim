" my .vimrc file
" by: Chris Honey <chrishoney@gmail.com>

" Enable pathogen to load plugins from ~/.vim/bundle
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" solarized settings
set background=dark
colorscheme solarized
syntax enable

" general settings
set nocompatible
set showcmd
set showmode
set number
set ruler
set incsearch

" tab settings
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent

" document settings
set textwidth=80


" python
autocmd BufRead *.py set cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd BufRead *.py set textwidth=79

" dotfiles
au BufNewFile,BufRead .bashrc,.bash_profile,.bash_aliases,.bash_functions,.profile,.bashcolors set filetype=sh

" html
au BufNewFile,BufRead *.html set filetype=htmldjango
au BufNewFile,BufRead *.html set tabstop=4 softtabstop=2 shiftwidth=2

" general key binds

" insert mode, jj = <Esc>
:imap jj <Esc>
:noremap <A> <Esc> 

" leader key bindings
"---------------------------------------" 

" setup "
"-------" 
" set mapleader
let mapleader = ','

" make testing vimrc easier
nnoremap <silent> <leader>rc :source $MYVIMRC<cr>

"---------------"
" mode toggling "
"---------------"
" paste
set pastetoggle=<leader>p
"
noremap <leader>h :set hlsearch! hlsearch?<cr>
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
" django surround
" insert {%  %} ready for input
map <leader>t i<C-g>s%
map <leader>b i<C-g>s%block <Esc>a
" insert {{  }} ready for input
map <leader>B i<C-g>s%endblock<Esc>$
map <leader>v i<C-g>sv
