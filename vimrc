" color
colorscheme molokai

" basics
set nocompatible
set backspace=indent,eol,start
set showmode
set showcmd
set encoding=utf-8
set t_Co=256
syntax on
set noerrorbells

set number
set ruler
set textwidth=80
set wrap
set linebreak
set wrapmargin=2
set scrolloff=5
set sidescrolloff=15
set laststatus=2

" search
set showmatch
set hlsearch
set smartcase

" indents
set autoindent
set tabstop=2
set shiftwidth=4
set expandtab
set softtabstop=2

" editing
set spell spelllang=en_us
set undofile
set autochdir
set history=1000
set autoread

" cmd mode
set wildmenu
set wildmode=longest:list,full

" plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi-vim'
"autocmd vimenter * NERDTree
"close NERDtree when it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
call plug#end()

