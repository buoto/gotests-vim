
if !exists('g:gotests_bin')
    let g:gotests_bin = 'gotests'
endif

if !exists('g:gotests_template_dir')
    let g:gotests_template_dir = ''
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
        if (!empty(funcName))
            let funcMatch = funcMatch . '|' . funcName
        endif
    endfor
    if (!empty(funcMatch))
        let funcMatch = funcMatch[1:]
    else
        echom 'gotests-vim: No function selected!'
        return
    endif

    let tmplDir = ''
    if (!empty(g:gotests_template_dir))
        let tmplDir = '-template_dir ' . shellescape(g:gotests_template_dir)
    endif

    let file = expand('%')
    let out = system(bin . ' -w -only ' . shellescape(funcMatch) . ' ' . tmplDir . ' ' . shellescape(file))
    echom 'gotests-vim: ' . out
endfunction

function! s:AllTests()
    let bin = g:gotests_bin
    if !executable(bin)
        echom 'gotests-vim: gotests binary not found.'
        return
    endif

    let tmplDir = ''
    if (!empty(g:gotests_template_dir))
        let tmplDir = '-template_dir ' . shellescape(g:gotests_template_dir)
    endif

    let file = expand('%')
    let out = system(bin . ' -w -all ' . tmplDir . ' ' . shellescape(file))
    echom 'gotests-vim: ' out
endfunction

command! -range GoTests <line1>,<line2>call s:Tests()
command! GoTestsAll call s:AllTests()
