if exists("b:current_syntax")
    finish
endif

syntax keyword potionKeyWord loop to times while
syntax keyword potionKeyWord if elseif else
syntax keyword potionKeyWord class return

syntax keyword potionFunction print join string

syntax match potionComment "\v#.*$"

highlight link potionKeyWord Keyword
highlight link potionFunction Function
highlight link potionComment Comment

let b:current_syntax = "potion"
