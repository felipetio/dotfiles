set guifont=Monaco:h16

" show line numbers
set nu

"augroup NERD
"  autocmd!
"  autocmd VimEnter * call s:CheckToOpenNERDTree()
"  autocmd VimEnter * wincmd l
"augroup END
"
"function! s:CheckToOpenNERDTree() abort
"    "dont open a tree for diff
"    if &diff | return | endif
"
"    "dont open a tree for gitcommits
"    if &ft == 'gitcommit' | return | endif
"
"    NERDTree
"endfunction
