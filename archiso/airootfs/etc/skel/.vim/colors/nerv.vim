" Vim Color File
" Maintainer: Szorfein

hi clear

set background=dark

if exists("syntax_on")
    syntax reset
endif

let colors_name = "nerv"

hi Normal ctermfg=red
hi Statement ctermfg=green 
hi Special ctermfg=blue
hi String ctermfg=yellow
hi Keyword ctermfg=lightred cterm=bold
hi Conditional ctermfg=lightcyan cterm=none  
hi Function ctermfg=lightcyan cterm=bold
hi Boolean ctermfg=white
hi Operator ctermfg=yellow
hi Exception ctermfg=lightred cterm=italic
hi Type ctermfg=lightgreen cterm=none
hi LineNr ctermfg=cyan
hi Identifier ctermfg=White cterm=none
hi Exception ctermfg=LightBlue cterm=none 
hi Character ctermfg=lightblue cterm=bold
hi perlIdentifier ctermfg=red
