" Set digerati as defaultcolor schema
colorscheme digerati

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Dont write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Dont write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

" supports 256-color terminal
set t_Co=256

" turn syntax highlighting on by default
syntax on

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" make that backspace key work the way it should
set backspace=indent,eol,start

" always use utf-8
set encoding=utf-8

" make the last line where the status is two lines deep so you can see status always
set laststatus=2

" auto indent
set ai
filetype plugin indent on

" do not put a cr at the end of the file. this will result in headers sent if you do web programming
set binary noeol

" set show matching parenthesis
set showmatch

" highlight search terms
set hlsearch

" show search matches as you type
set incsearch

" do no need to save to change buffers
set hidden

"disable beep and flash
set noeb vb t_vb=

"set spell checking lang
set spelllang=en_us

" add a horizontal indicator to break lines
set colorcolumn=88

call plug#begin('~/.vim/bundle')
  Plug 'pappasam/vim-filetype-formatter'
  Plug 'nvie/vim-flake8'
  Plug 'itchyny/lightline.vim'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'prettier/vim-prettier'
  Plug 'easymotion/vim-easymotion'
  Plug 'JamshedVesuna/vim-markdown-preview'
  Plug 'goerz/jupytext.vim'
  Plug 'APZelos/blamer.nvim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <silent> <Leader>rg :Rg <C-R><C-W><CR>

" fzf.vim is hanging
 nmap <Leader>f :GFiles<CR>
 nmap <Leader>F :Files<CR>
 nmap <Leader>l :BLines<CR>
 nmap <Leader>L :Lines<CR>

nmap <Leader>/ :Rg<Space>

command Gdiff Gvdiff

" folding
set foldmethod=indent
set foldlevel=99	" do not fold when open a file
nnoremap <space> za
vnoremap <space> zf
nnoremap <silent> <Leader><space> :let&l:fdl=indent('.')/&sw<cr>
nnoremap <silent> <Leader><Esc> :let&l:fdl=99/&sw<cr>

" quote/unquote
nnoremap <Leader>qq ciw""<Esc>P
nnoremap <Leader>q ciw''<Esc>P
nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P

" go to buffer
nnoremap gb :ls<CR>:b<Space>

" delete buffer without losing the split window
"command Bd :call <SID>Kwbd(1)<CR>:<BS>

augroup SPELL
  autocmd!
  autocmd VimEnter * call s:CheckToSetSpell()
  autocmd VimEnter * wincmd l
augroup END

function! s:CheckToSetSpell() abort
    "set spell check for gitcommits
    if &ft == 'gitcommit' | set spell | endif
endfunction

" easymotion
nmap t <Plug>(easymotion-overwin-w)

let vim_markdown_preview_github=1
