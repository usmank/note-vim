" Language: Note
" Description: Vim syntax file for note files. Note files are simple text
" files for keeping track of todos and general information in a list format.
" Author: Usman Khan (usmankhan9190@gmail.com)
" Date: Oct. 11 2014

if exists("b:current_syntax")
    finish
endif

syn keyword noteGeneralKeywords TODO MEETING
syn match   noteHeader          "\v^#.*"
syn match   noteWorkItem        "\v<[A-Z]{4,}-\d{2,}>"
syn match   noteCheckbox        "\v\[ \]"
syn match   noteCheckedbox      "\v\[x\]"
syn match   notePartialCheckedbox "\v\[-\]"
syn match   noteCheckedbox      "\v\[x\]"
syn match   noteListItem        "\v\s*-\s"
syn match   noteEmphasis        "\v<__.+__>"
syn match   noteDate            "\v<(\d{2}/\d{2}/\d{2}|\d{4}-\d{1,2}-\d{1,2})>"
syn match   noteTime            "\v<\d{1,2}:\d{2}(:\d{2}(.\d+)?)?(\s?(am|AM|pm|PM))?>"
syn match   noteUrl             "\v<https?://\S+>"
syn match   noteSubject         "\v\s(\s|\w|\(|\)|\{|\}|\<|\>|-)+: " contained
syn match   noteInlineCode      "\v`[^`]+`"
syn region  noteLineStart       start="\v^\s*\[.\]\s*" end="\v$" oneline contains=noteSubject,noteCheckbox,noteCheckedbox,noteInlineCode,noteDate,noteTime,noteEmphasis fold

highlight def link noteCheckbox             Type
highlight def link noteCheckedbox           String
highlight def link notePartialCheckedbox    Type
highlight def link noteDate                 Number
highlight def link noteTime                 Number
highlight def link noteEmphasis             WarningMsg
highlight def link noteGeneralKeywords      Todo
highlight def link noteHeader               noteHeader
highlight def link noteListItem             Type
highlight def link noteSubject              Title
highlight def link noteUrl                  Operator
highlight def link noteInlineCode           Keyword

highlight noteHeader cterm=bold gui=bold

