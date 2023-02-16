set guifont=Monaco:h16

" show line numbers
set nu

augroup NERD
  autocmd!
  autocmd VimEnter * call s:CheckToOpenNERDTree()
  autocmd VimEnter * wincmd l
augroup END

function! s:CheckToOpenNERDTree() abort
    "dont open a tree for diff
    if &diff | return | endif

    "dont open a tree for gitcommits
    if &ft == 'gitcommit' | return | endif

    NERDTree
endfunction

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let NERDTreeIgnore = ['\.pyc$']
