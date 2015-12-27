if exists("b:current_syntax")
    finish
endif

syntax keyword potionKeyWord loop to times while
syntax keyword potionKeyWord if elseif else
syntax keyword potionKeyWord class return

syntax keyword potionFunction print join string

syntax match potionComment "\v#.*$"

syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="

syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region potionString start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link potionKeyWord Keyword
highlight link potionFunction Function
highlight link potionComment Comment
highlight link potionOperator Operator
highlight link potionString String

let b:current_syntax = "potion"
