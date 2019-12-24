" Language: Note
" Description: Vim syntax file for note files. Note files are simple text
" files for keeping track of todos and general information in a list format.
" Author: Usman Khan (usmankhan9190@gmail.com)
" Date: Oct. 11 2014

if exists("b:current_syntax")
    finish
endif

syn keyword noteGeneralKeywords TODO MEETING
syn match   noteWorkItem        "\v<[A-Z]{4,}-\d{2,}>"
syn match   noteCheckbox        "\v\[ \]"
syn match   noteCheckedbox      "\v\[x\]"
syn match   noteEmphasis        "\v<__.+__>"
syn match   noteDate            "\v<(\d{2}/\d{2}/\d{2}|\d{4}-\d{2}-\d{2})>"
syn match   noteTime            "\v<\d{1,2}:\d{2}(:\d{2}(.\d+)?)?( (am|AM|pm|PM))?>"
syn match   noteUrl             "\v<https?://\S+>"

highlight def link noteGeneralKeywords  Keyword
highlight def link noteWorkItem         NoteWorkItem
highlight def link noteCheckbox         NoteNotDone
highlight def link noteCheckedbox       NoteDone
highlight def link noteEmphasis         NoteBold
highlight def link noteDate             NoteDateTime
highlight def link noteTime             NoteDateTime
highlight def link noteUrl              NoteUrl

highlight NoteWorkItem ctermfg=4 cterm=Bold
highlight NoteNotDone ctermfg=1 cterm=Bold
highlight NoteDone ctermfg=2 cterm=Bold
highlight NoteBold ctermfg=1 cterm=Bold
highlight NoteDateTime ctermfg=3 cterm=None
highlight NoteUrl ctermfg=3 cterm=None

