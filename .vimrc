" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

" set our tabs to two spaces
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab

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

"Configure status line"
set statusline=%(%F%m%r%h%w\ [%Y]\ %{&encoding}\ %)%=%(%l,%v\ %LL\ %p%%%)

" make the last line where the status is two lines deep so you can see status always
set laststatus=2

" auto indent
set ai

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
