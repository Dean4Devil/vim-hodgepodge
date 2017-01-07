" Haskell specific configuration
runtime ftplugin/code.vim

set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set shiftround

" I have better ones
let g:haskell_conceal = 0
let g:haskell_conceal_enumerations = 1

let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
    \ }

nnoremap <buffer> <Leader>t :HdevtoolsType<CR>
nnoremap <buffer> <silent> <Leader>r :HdevtoolsClear<CR>

let g:haskellmode_completion_ghc = 0
let g:necoghc_enable_detailed_browse = 1
setlocal omnifunc=necoghc#omnifunc

let g:deoplete#delimiters = ['.', ':', '::']
