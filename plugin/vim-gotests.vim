
function! s:Tests() range
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
        echom 'No function selected!'
        return
    endif
    let bin = 'gotests'
    let file = expand('%')
    let out = system(bin . ' -w -only ' . shellescape(funcMatch) . ' ' . shellescape(file))
    echom out
endfunction

command! -range GoTests <line1>,<line2>call s:Tests()
