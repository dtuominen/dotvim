" .vimrc <dtuominen@gmail.com>                                        "
"----------------------------------------------------------------------"
" settings                                                             "
"----------------------------------------------------------------------"
" general                              "
"--------------------------------------"
" startup "
"---------"

" enable pathogen to load plugins from ~/.vim/bundle
"set nocompatible
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

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
set wrap
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]
set autochdir
set autoindent
set textwidth=95
set encoding=utf-8
set wm=5
set smartcase

" folding "
" ------- "
"nnoremap <Space> za
" vim-virtualenv "
" -------------- "
let g:virtualenv_directory="$WORKON_HOME/.venvs" 
let g:virtualenv_auto_activate=1
let g:virtualenv_stl_format = '[%n]'
" shortname
set sn
" backspace "
" --------- "
set backspace=indent,eol,start

" history "
" ------- "
set history=100000
" matchit "
" ------- "
source $VIMRUNTIME/macros/matchit.vim

" wildmenu
set wmnu
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
set statusline=%!Pl#Statusline(0,1)
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

" Khuno "
" ----- "
nnoremap <silent><Leader>x <Esc>:Khuno show<CR>

" vim-venv "
" -------- "
let g:virtualenv_auto_activate=1

" ctags "
"-------"

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
nnoremap <C-c>r :source $MYVIMRC<cr>
nnoremap <C-c>s :vs $MYVIMRC<cr>

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
" django surround "
"-----------------"
" insert mode "
" - - - - - - -"
imap <leader>s <C-g>s

"----------------------------------------------------------------------"
"-----plugin options-----
" -----pyflakes----- "
"let g:khuno_ignore="W402,E501,W806,E302"
let g:khuno_ignore="E302"
let g:khuno_max_line_length=80
nmap <silent><leader>x <Esc>:Khuno show<CR>
"let g:pyflakes_use_quickfix = 0
"let g:pep8_map='<leader>8'

" -----nerdtree----- "
map <leader>nt :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1

" -----Ack-----  "
nmap <leader>a <ESC>:Ack!
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1


" -----Powerlines----- "
let g:Powerline_symbols = 'fancy'

" -----Command remaps----- "
:command W w
:command WQ wq
:command Wq wq
:command Q q


" -----Buffer navigation----- "
:nnoremap <leader>b :bnext<CR>
:nnoremap <leader>v :bprevious<CR>

" Auto completion via ctrl-space
set omnifunc=pythoncomplete#Complete
inoremap <Nul> <C-x><C-o>

" -----ctags setup----- "
set tags=./tags,./../tags,./../../tags,tags,~/.commontags
nnoremap <C-g> :tag 
nnoremap <leader>t :tselect
nnoremap ]t :tnext
nnoremap [t :tprev
inoremap <C-x><c-]> <c-]>
map <F11> :!ctags -R -a $VIRTUAL_ENV/lib/python2.7/site-packages<CR>
map <F10> :!ctags -R -a % ~/vtags/tags
autocmd BufWritePost *
    \ if filereadable('tags') |
    \   call system('ctags -a '.expand('%')) |
    \ endif
" -----taglist----- "
map <F4> :TlistToggle<cr>

" -----Proj-Vim----- "
let g:ProjMapLeader = '<leader>k'

" Python execution "
" ---------------- "

" Get this plugin from http://www.vim.org/scripts/script.php?script_id=1112
" Pressing "K" takes you to the documentation for the word under the cursor.
"autocmd filetype python source bundle/pydoc-vim/ftplugin/python_pydoc.vim


" `gf` jumps to the filename under the cursor.  Point at an import statement
" and jump to it!
python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

" Execute a selection of code (very cool!)
" Use VISUAL to select a range and then hit ctrl-h to execute it.
python << EOL
import vim
def EvaluateCurrentRange():
    eval(compile('\n'.join(vim.current.range),'','exec'),globals())
EOL
map <leader>K :py EvaluateCurrentRange()

" Use F7/Shift-F7 to add/remove a breakpoint (pdb.set_trace)
" Totally cool.
python << EOF
def SetBreakpoint():
    import re
    nLine = int( vim.eval( 'line(".")'))

    strLine = vim.current.line
    strWhite = re.search( '^(\s*)', strLine).group(1)

    vim.current.buffer.append(
       "%(space)spdb.set_trace() %(mark)s Breakpoint %(mark)s" %
         {'space':strWhite, 'mark': '#' * 30}, nLine - 1)

    for strLine in vim.current.buffer:
        if strLine == "import pdb":
            break
    else:
        vim.current.buffer.append( 'import pdb', 0)
        vim.command( 'normal j1')

vim.command( 'map <f7> :py SetBreakpoint()<cr>')

def RemoveBreakpoints():
    import re

    nCurrentLine = int( vim.eval( 'line(".")'))

    nLines = []
    nLine = 1
    for strLine in vim.current.buffer:
        if strLine == "import pdb" or strLine.lstrip()[:15] == "pdb.set_trace()":
            nLines.append( nLine)
        nLine += 1

    nLines.reverse()

    for nLine in nLines:
        vim.command( "normal %dG" % nLine)
        vim.command( "normal dd")
        if nLine < nCurrentLine:
            nCurrentLine -= 1

    vim.command( "normal %dG" % nCurrentLine)

vim.command( "map <s-f7> :py RemoveBreakpoints()<cr>")
EOF
"vim:syntax=vim
