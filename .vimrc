" .vimrc <chrishoney@gmail.com>                                        "
"----------------------------------------------------------------------"
" settings                                                             "
"----------------------------------------------------------------------"
" general                              "
"--------------------------------------"
" startup "
"---------"

" enable pathogen to load plugins from ~/.vim/bundle
set nocompatible
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" colorscheme "
"-------------"

" solarized
set background=dark
colorscheme solarized
syntax enable
set t_Co=256

" display "
"---------"
set showcmd
set showmode
set number
set ruler

" disable bells "
" ---------"
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" search "
"--------"
set incsearch
set hlsearch

" tab "
"-----"
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

" document "
"----------"
set autoindent
set textwidth=80
set encoding=utf-8

" backspace "
" --------- "
set backspace=indent,eol,start

"--------------------------------------------------------------------"
" settings                                                           "
"--------------------------------------------------------------------"
" filetype specific                    "
"--------------------------------------"
" python "
"--------"
autocmd BufRead *.py set cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd BufRead *.py set textwidth=79
autocmd BufRead *.py let python_highlight_space_errors=1

" dotfiles "
"----------"
au BufNewFile,BufRead .bashrc,.bash_profile,.bash_aliases,.bash_functions,.profile,.bashcolors set filetype=sh

" html "
"------"
au BufNewFile,BufRead *.html set filetype=htmldjango
au BufNewFile,BufRead *.html set tabstop=4 softtabstop=2 shiftwidth=2 textwidth=0

" ctags "
"-------"
autocmd BufWritePost *
    \ if filereadable('tags') |
    \   call system('ctags -a '.expand('%')) |
    \ endif
"----------------------------------------------------------------------"
" key binds                                                            "
"----------------------------------------------------------------------"
" general                              "
"--------------------------------------"
" convenience "
"-------------"
" insert mode, jj = <Esc>
:imap jj <Esc>

"----------------------------------------------------------------------"
" key binds                                                            "
"----------------------------------------------------------------------"
" leader key                           "
"--------------------------------------"
" setup "
"-------"

" set mapleader
let mapleader = ','
" make testing vimrc easier
nnoremap <silent> <leader>rc :source $MYVIMRC<cr>

" utility "
"---------"

" get output from a shell command
nnoremap <leader>rd :read !

" mode toggling "
"---------------"

" paste
set pastetoggle=<leader>p
" hlsearch
noremap <leader>h :set hlsearch! hlsearch?<cr>
" line numbers
noremap <leader>n :set nu!<cr>

" split windows "
"---------------"

" switch to window in <direction>
" legend: <C-=ctrl, <S-=shift
nnoremap <C-h> <C-w><Left>
nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
nnoremap <C-l> <C-w><Right>
" resize window by 1 or 10 rows
nnoremap <leader>[ <C-w>-
nnoremap <leader>] <C-w>+
nnoremap <leader>[[ 10<C-w>-
nnoremap <leader>]] 10<C-w>+

nnoremap <C-`> :bp
nnoremap <C-1> :bn

"----------------------------------------------------------------------"
" key binds                                                            "
"----------------------------------------------------------------------"
" plugin specific                      "
"--------------------------------------"
" Gundo
map <leader>g :GundoToggle<CR>
" django surround "
"-----------------"
" insert mode "
" - - - - - - -"
imap <leader>s <C-g>s

"----------------------------------------------------------------------"
"-----plugin options-----
" -----pyflakes----- "
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

" -----nerdtree----- "
map <leader>nt :NERDTreeToggle<CR>

" -----Ack-----  "
nmap <leader>a <ESC>:Ack!
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" -----Command remaps----- "
:command W w
:command WQ wq
:command Wq wq
:command Q q

" -----ctags setup----- "
nnoremap <C-g> :tag 
nnoremap <leader>t :tselect
nnoremap ]t :tnext
nnoremap [t :tprev
inoremap <C-x><c-]> <c-]>
map <F11> :!ctags -R -a $VIRTUAL_ENV/lib/python2.7/site-packages<CR>
map <F10> :!ctags -R -a $HOME/django-trunk/django/<CR>
" -----taglist----- "
map <F4> :TlistToggle<cr>
" -----Proj-Vim----- "
let g:ProjMapLeader = '<leader>k'
