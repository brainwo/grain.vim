if exists("b:current_syntax")
  finish
endif

syn keyword grainTodo contained TODO FIXME NOTE

syntax match grainInlineComment "//.*$"
  \ contains=grainTodo oneline
syntax region grainMultilineComment
  \ matchgroup=grainMultilineComment
  \ start="/**" end="**/"
  \ contains=grainTodo,@Spell
  \ fold


syn keyword grainLet let

syn keyword grainConditional if else match
syn keyword grainRepeat

syn keyword grainDataType enum type

hi def link grainConditional Conditional
hi def link grainElse Conditional
hi def link grainDataType Type

hi def link grainInlineComment Comment
hi def link grainMultilineComment Comment
hi def link grainTodo Todo

let b:current_syntax = "grain"
