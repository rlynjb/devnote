" enable file navigation
let g:netrw_liststyle=3

" set number guide on left
set nu

" enable syntax highlighting
syntax on

" set tab width to 2
set tabstop=2
set shiftwidth=2
set expandtab

" removes eof
set binary

" enable auto indentation
set autoindent
set smartindent
set smarttab

" use tab as space instead of indent
filetype plugin indent on

" easier split navigation, instead of ctrl-w, just use ctrl-hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" more natural split opening
set splitbelow
set splitright

" easy window resize
nnoremap <S-h> <C-w>< -10 
nnoremap <S-j> <C-W>- -10
nnoremap <S-k> <C-W>+ +10
nnoremap <S-l> <C-w>> +10


" enable plugins
call pathogen#infect()
syntax enable

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'kchmck/vim-coffee-script'

