if !exists("g:potion_command")
    let g:potion_command = "potion"
endif

function! PotionCompileAndRunFile()
    silent !clear
    execute "!" . g:potion_command . " " . bufname("%")
endfunction

nnoremap <buffer> <localleader>r :call PotionCompileAndRunFile()<cr>

nnoremap <buffer> <localleader>b :call PotionShowBytecode()<cr>

function! PotionShowBytecode()
    let bytecode = system(g:potion_command . " -c -V " . bufname("%") . " 2>&1")
    
    vsplit _Potion_Bytecode_
    normal! ggdG
    setlocal filetype=potionbytecode
    setlocal buftype=nofile

    call append(0, split(bytecode, "\v\n"))
endfunction
