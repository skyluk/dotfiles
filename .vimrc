filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

colorscheme wombat256

syntax on
set nocompatible
set modelines=0
set nowrap
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set ai
"set smartindent
set gdefault
set incsearch
set showmatch
set hlsearch
set showcmd
set ruler
set backspace=indent,eol,start
set number

" make pasting text better
" nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

" make tab navigation easy
:map <S-h> gT
:map <S-l> gt
:map <S-j> nop
:map FF :%bdel!<CR>

let mapleader = ","

map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>

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

"let g:go_fmt_autosave = 0

au BufNewFile,BufRead *.ino set filetype=c
au BufNewFile,BufRead *.t set filetype=php
au BufNewFile,BufRead *.libsonnet set filetype=jsonnet

let g:dbext_default_profile = 'PG'
"let g:dbext_default_profile_PG = 'type=PGSQL:user=sparkfun:passwd=:dbname=sparkfun:host=10.1.1.32'

vmap <leader>se <Plug>SendSelectionToTmux
nmap <leader>se <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

command! WIPEReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
