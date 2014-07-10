" ===========================================
" ===========================================
" Indentation
" -------------------------------------------
" set tab width to 2
set tabstop=2
set shiftwidth=2
set expandtab
" enable auto indentation
set smartindent
set smarttab


" ===========================================
" ===========================================
" Compiling File 
" -------------------------------------------
set binary " removes eof
" Remove trailing whitespace upon save
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre *.rb,*.rake,*.coffee :call <SID>StripTrailingWhitespaces()


" ===========================================
" ===========================================
" Appearance and Highlighting
" -------------------------------------------
colorscheme molokai
" needed for syntax highlighting
syntax on
filetype plugin indent on
set nu " set number guide on left
let g:indentLine_color_term = 239
let g:indentLine_char = '┆'
" vim supports js, just do this to use js syntax highlighting for json
autocmd BufNewFile,BufRead *.json set ft=javascript
"autocmd BufNewFile,BufRead *.styl set ft=css


" ===========================================
" ===========================================
" Smoother Navigation on Vim
" -------------------------------------------
let g:netrw_liststyle=3 " enable file navigation
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


" ===========================================
" ===========================================
" Enable Plugin
" -------------------------------------------
execute pathogen#infect()


