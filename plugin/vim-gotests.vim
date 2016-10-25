
if !exists('g:gotests_bin')
    let g:gotests_bin = 'gotests'
endif

function! s:Tests() range
    let bin = g:gotests_bin
    if !executable(bin)
        echom 'gotests-vim: gotests binary not found.'
        return
    endif

    let funcMatch = ''
    for lineno in range(a:firstline, a:lastline)
        let funcName = matchstr(getline(lineno), '^func\s*\(([^)]\+)\)\=\s*\zs\w\+\ze(')
        if funcName != ''
            let funcMatch = funcMatch . '|' . funcName
        endif
    endfor
    if funcMatch != ''
        let funcMatch = funcMatch[1:]
    else
        echom 'gotests-vim: No function selected!'
        return
    endif


    let file = expand('%')
    let out = system(bin . ' -w -only ' . shellescape(funcMatch) . ' ' . shellescape(file))
    echom 'gotests-vim: ' . out
endfunction

command! -range GoTests <line1>,<line2>call s:Tests()
