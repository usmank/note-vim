" Language: Note
" Description: Vim syntax file for note files. Note files are simple text
" files for keeping track of todos and general information in a list format.
" Author: Usman Khan (usmankhan9190@gmail.com)
" Date: Oct. 11 2014

if exists("b:current_syntax")
    finish
endif

syn keyword noteGeneralKeywords TODO MEETING
syn match   noteWorkItem        "\v<([Dd]efect|[Tt]ask|[Ww]ork [Ii]tem)>\s*\d+"
syn match   noteCheckbox        "\v\[ \]"
syn match   noteCheckedbox      "\v\[x\]"

highlight def link noteGeneralKeywords  Keyword
highlight def link noteWorkItem         String
highlight def link noteCheckbox         Identifier
highlight def link noteCheckedbox       Include
