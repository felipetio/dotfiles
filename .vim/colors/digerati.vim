" Maintainer:	Henrique C. Alves (hcarvalhoalves@gmail.com)
" Version:      1.0
" Last Change:  October 05 2008

set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "digerati"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine		ctermbg=239 				guibg=#4f4f4f
  hi CursorColumn	ctermbg=236 				guibg=#2d2d2d
  hi MatchParen		ctermfg=231 ctermbg=239 cterm=bold	guifg=#ffffff guibg=#4f4f4f gui=bold
  hi Pmenu 		ctermfg=238 ctermbg=253			guifg=#404040 guibg=#dcdcdc
  hi PmenuSel 		ctermfg=231 ctermbg=109			guifg=#ffffff guibg=#93b5bf
endif

" General colors
hi Cursor 		ctermfg=NONE ctermbg=246  cterm=NONE	guifg=NONE    guibg=#909090 gui=NONE
hi Normal 		ctermfg=255  ctermbg=236  cterm=NONE	guifg=#f0f0f0 guibg=#333333 gui=NONE
hi NonText 		ctermfg=247  ctermbg=236  cterm=NONE	guifg=#a0a0a0 guibg=#303030 gui=NONE
hi LineNr 		ctermfg=247  ctermbg=236  cterm=NONE	guifg=#a0a0a0 guibg=#303030 gui=NONE
hi StatusLine 		ctermfg=238  ctermbg=254  cterm=NONE	guifg=#444444 guibg=#e0e0e0 gui=italic
hi StatusLineNC 	ctermfg=236  ctermbg=59   cterm=NONE	guifg=#303030 guibg=#606060 gui=NONE
hi VertSplit 		ctermfg=238  ctermbg=238  cterm=NONE	guifg=#444444 guibg=#444444 gui=NONE
hi Folded 		ctermfg=59   ctermbg=145  cterm=NONE	guibg=#384048 guifg=#a0a8b0 gui=NONE
hi Title		ctermfg=231  ctermbg=NONE cterm=bold	guifg=#ffffff guibg=NONE    gui=bold
hi Visual		ctermfg=231  ctermbg=145  cterm=NONE	guifg=#ffffff guibg=#b8b89f gui=NONE
hi SpecialKey		ctermfg=244  ctermbg=236  cterm=NONE	guifg=#808080 guibg=#343434 gui=NONE

" Syntax highlighting
hi Comment 		ctermfg=244  cterm=NONE			guifg=#808080 gui=italic
hi Todo 		ctermfg=246  cterm=NONE			guifg=#8f8f8f gui=italic
hi Boolean      	ctermfg=190  cterm=NONE			guifg=#cdff00 gui=NONE
hi String 		ctermfg=190  cterm=NONE			guifg=#cdff00 gui=italic
hi Identifier 		ctermfg=190  cterm=NONE			guifg=#cdff00 gui=NONE
hi Function 		ctermfg=231  cterm=bold			guifg=#ffffff gui=bold
hi Type 		ctermfg=74   cterm=NONE			guifg=#77b4c7 gui=NONE
hi Statement 		ctermfg=74   cterm=NONE			guifg=#77b4c7 gui=NONE
hi Keyword		ctermfg=204  cterm=NONE			guifg=#ff3b77 gui=NONE
hi Constant 		ctermfg=204  cterm=NONE			guifg=#ff3b77 gui=NONE
hi Number		ctermfg=204  cterm=NONE			guifg=#ff3b77 gui=NONE
hi Special		ctermfg=204  cterm=NONE			guifg=#ff3b77 gui=NONE
hi PreProc 		ctermfg=145  cterm=NONE			guifg=#b8b89f gui=NONE
hi Todo         	ctermfg=NONE ctermbg=204 cterm=NONE	guifg=NONE    guibg=#ff3b77 gui=italic

" Code-specific colors
hi pythonOperator	ctermfg=74  cterm=NONE			guifg=#77b4c7 gui=NONE
hi htmlEndTag		ctermfg=231 cterm=NONE			guifg=#ffffff gui=NONE
hi htmlLink		ctermfg=204 cterm=underline 		guifg=#ff3b77 gui=underline

" Nerdtree
hi Directory		ctermfg=74  ctermbg=NONE cterm=NONE	guifg=#72b4c7 guibg=NONE gui=NONE
