if exists("b:current_syntax")
  finish
endif

syn keyword grainIf if
syn keyword grainElse else

syn keyword grainDataType enum type

hi def link grainIf Conditional
hi def link grainElse Conditional
hi def link grainDataType Type

let b:current_syntax = "grain"
