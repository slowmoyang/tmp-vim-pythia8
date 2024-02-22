" Vim syntax file
" Language: Pythia8 cmnd card
" Maintainer: Seungjin Yang
" Latest Revision: 22 Feb 2024
if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "pythia8"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" comment
syntax match pythia8Comment "!.*$"
highlight default link pythia8Comment Comment


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" todo
syntax keyword pythia8Todo TODO FIXME NOTE XXX

highlight default link pythia8Todo Todo


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" numbers
syntax match pythia8Number "\v<\d+>"
syntax match pythia8Number "\v<\d+\.\d+>"
syntax match pythia8Number "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match pythia8Number "\v<0x\x+([Pp]-?)?\x+>"
syntax match pythia8Number "\v<0b[01]+>"
syntax match pythia8Number "\v<0o\o+>"

highlight default link pythia8Number Number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wildcard
syntax match pythia8Wildcard ":"
highlight default link pythia8Wildcard Operator

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" keywords
" TODO In the future they will have their own syn hi like imax.
syntax match pythia8Type "\%(^\s\{}Main\s\+\)"
syntax match pythia8Type "\%(^\s\{}Init\s\+\)"
syntax match pythia8Type "\%(^\s\{}Next\s\+\)"
syntax match pythia8Type "\%(^\s\{}Stat\s\+\)"
syntax match pythia8Type "\%(^\s\{}Random\s\+\)"

highlight default link pythia8Type type
