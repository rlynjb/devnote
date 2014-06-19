let g:netrw_liststyle=3
set nu
syntax on
" set tab width to 2
set tabstop=2
" removes eof
set binary

call pathogen#infect()

syntax enable
"filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'slim-template/vim-slim.git'

syntax enable
"filetype plugin indent on

