scriptencoding utf-8

if exists("g:loaded_vim_gotests")
  finish
endif

let g:loaded_vim_gotests = 1

if !exists('g:gotests_bin')
    let g:gotests_bin = 'gotests'
endif

if !exists('g:gotests_template_dir')
    let g:gotests_template_dir = ''
endif

if !exists('g:gotests_template')
    let g:gotests_template = ''
endif

command! -range GoTests <line1>,<line2>call gotests#tests()
command! GoTestsAll call gotests#alltests()
