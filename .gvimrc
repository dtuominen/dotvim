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

" enable pathogen to load plugins from ~/.vim/bundle
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
" colorscheme "
"-------------"
" solarized "
" --------- "

set background=dark
colorscheme solarized
syntax enable
set t_Co=256
let g:solarized_termtrans=1
let g:solarized_bold=0
let g:solarized_italic=0
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_diffmode="high"
let g:solarized_hitrail=1
let g:solarized_degrade=0

" display "
"---------"
set showcmd
set showmode
set number
set ruler
set gfn=Consolas\ For\ Powerline:h13
"set fillchars+=stl:\ ,stlnc:\

" disable bells "
" ---------"
set "noerrorbells" visualbell t_vb=
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
set wrap
set autochdir
set autoindent
set tw=95
set co=99
set encoding=utf-8
set wm=5
set showbreak=\ \ \ \ \ \ \ \ 
set wildignorecase
set smartcase
set nolbr
set cc=95
" Recognize <ESC> key in insert mode
set ek

"--- misc ----"
set macmeta
set vfile=~/.vim/msgfile
set ts=8
set sts=4
" ---folds--- "
" ----------- "
set fen
set fdl=0
set fdls=-1
set fdm=indent

" ----diff---- "
" ------------ "
set nodiff
set dip=filler

" shortname
set sn
" backspace "
" --------- "
set backspace=indent,eol,start

" history "
" ------- "
set history=10000
runtime macros/matchit.vim
" wildmenu
set wmnu

" debugging "
set debug="msg"
" Match lines going over 80 characters "
nnoremap <leader>lm :match ErrorMsg '\%>80v.\+'<CR> 
"--------------------------------------------------------------------"
" settings                                                           "
"--------------------------------------------------------------------"
" statusline                                                         "
set laststatus=2
let g:Powerline_stl_path_style = 'full'
let g:Powerline_theme = 'solarized256'
let g:Powerline_colorscheme = 'solarized256'
let g:Powerline_symbols_override = {
    \ 'BRANCH': [0x2213],
    \ 'LINE': 'L',
    \ }
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
set hidden
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
nnoremap <silent> <leader>vrc :o $MYVIMRC<cr>

"make ` key easier to reach
noremap `' 
noremap '`

" utility "
"---------"

" remove html from file leaving just text "
nnoremap <leader>html :%s#<[^>]\+>##g
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

" create a new horizontal split
nnoremap <leader>sp <C-w>s
nnoremap <leader>ev <C-w>v
nnoremap <C-`> :bp
nnoremap <C-1> :bn

"----------------------------------------------------------------------"
" key binds                                                            "
"----------------------------------------------------------------------"
" plugin specific                      "
"--------------------------------------"
" Gundo
map <leader>g :GundoToggle<CR>
" vim-repeat  "
" ---------   "
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" django surround "
"-----------------"
" insert mode "
" - - - - - - -"
imap <leader>s <C-g>s

"-----text manipulation-----"
"---------------------------"
"--Binding to swap two text fields. Stolen from http://twitter.com/vimtips--"
nnoremap <leader>swp :s/\(.*\):\(.*\)/\2 : \1/
"----------------------------------------------------------------------"
"-----plugin options-----
" -----pyflakes----- "
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

" -----nerdtree----- "
map <leader>nt :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1

" -----Ack-----  "
nmap <leader>a <ESC>:Ack!
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" -----Powerlines----- "
let g:Powerline_symbols = 'fancy'
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

"-------------------"
" -----taglist----- "
"-------------------"
map <F4> :TlistToggle<cr>

" -----Proj-Vim----- "
"
let g:ProjMapLeader = '<leader>k'

" -----Tab Completion---- "
" ----------------------- "
" without messing up tab functionality! "

function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction
inoremap <tab> <c-r>=smart_tabcomplete()<cr>
autocmd FileType *
    \ if &omnifunc != '' |
    \   call SuperTabChain(&omnifunc, "<c-p>") |
    \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
    \ endif
let g:SuperTabNoCompleteAfter = ['^', ',', '\s']
