filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

colorscheme wombat256

syntax on
set nocompatible
set modelines=0
set nowrap
set expandtab
set softtabstop=2
set shiftwidth=2
"set ai
"set smartindent
set gdefault
set incsearch
set showmatch
set hlsearch
set showcmd
set ruler

" make pasting text better
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

" make tab navigation easy
:map <S-h> gT
:map <S-l> gt
:map <S-j> nop

let mapleader = ","

map <F2> :NERDTreeToggle<CR>

nnoremap ; :
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
inoremap jj <ESC>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
