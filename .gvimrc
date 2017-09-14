" set digerati as defaultcolor schema
colorscheme digerati

set guifont=Monaco:h12

" show line numbers
set nu

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

autocmd VimEnter * wincmd l
