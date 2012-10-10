# dotvim

I write regular python and django apps for the most part.
Plugins are managed through pathogen and git submodules. Plugins are located
inside `bundle/`. 

## Installation

### 3 easy steps.

* `git clone http://github.com/Chrishoney/dotvim.git ~/.vim`
* `cd ~/.vim`
* `./setup.sh`

***

# features

## Colorscheme

Solarized is the default colorscheme, and you need a terminal palette to use
it along with the included vim colorscheme. Solarized includes palette files
for the following terminals:

* xresources/xdefaults (linux)
* iterm2
* terminal.app
* putty

**Download a palette:** [http://ethanschoonover.com/solarized](http://ethanschoonover.com/solarized)

## Plugins

* django.vim
* gist-vim
* html.vim
* htmljinja
* jinja.vim
* mako.vim
* python.vim
* solarized-colors
* surround
* webapi-vim

## Feature toggles

Toggle paste mode: `<leader>p|P`

* p: `:set paste<cr>i`
* P: `:set nopaste<cr>`

Toggle highlight search: `<leader>h|H`

* h: `:set hlsearch<cr>`
* H: `:set nohlsearch`

Toggle number lines: `<leader>n`

`:set nu!<cr>`

## Window splits

Resize split windows: `<leader>[|]`

* [: `:<Ctrl-w>-`  
* ]: `:<Ctrl-w>+`

Move around faster: `<leader>h|j|k|l`

`<Ctrl-w>Left|Down|Up|Right`

More keybinds are included in .vimrc

## Filetype settings.

### Python

.py files have pep8 settings by default.

### Shell

The following dotfiles have filetype=sh

* .bashcolors
* .bashrc
* .bash_aliases
* .bash_functions
* .bash_profile
* .profile

### HTML and HTML Templates

.html files automatically open with filetype=htmldjango. mako and jinja syntax
files are included, just `:set filetype=mako|htmljinja`. There are some useful
surround mappings for django included in my .vimrc: 

`<leader>b` (ends in insert mode)

``` django
{% block  %}
```

`<leader>B`

``` django
{% endblock %}
```

`<leader>t` (ends in insert mode)

``` django
{%  %}
```

`<leader>v` (ends in insert mode)

``` django
{{  }}
```

