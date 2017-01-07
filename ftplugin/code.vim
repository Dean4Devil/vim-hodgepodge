scriptencoding utf-8
" Custom settings for when writing code (instead of prose for example)

" Conceal syntax ---- {{{
set cole=2

function! ToggleCole ()
	if &l:cole == 2
		set cole=0
	else
		set cole=2
	endif
endfunction

nnoremap <C-c> :call ToggleCole()<CR>
" }}}

" Deoplete --- {{{
let g:deoplete#enable_at_startup = 1

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <expr><S-Tab> pumvisible() ? "\<c-p>" : "\<S-Tab>"

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Set the input triggers in the different language.vim files.
let g:deoplete#keyword_patterns = {}
" }}}

" Neomake {{{
autocmd! BufWritePost * Neomake
" }}}

" Syntastic {{{
" Global options
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_aggregate_errors = 1

" Signs
" sign undefine SyntasticError
" sign define SyntasticError text=🔥   texthl=SyntasticErrorSign linehl=SyntasticErrorLine
" sign undefine SyntasticWarning
" sign define SyntasticWarning text=❕   texthl=SyntasticWarningSign linehl=SyntasticWarningLine
" }}}

" Pink fluffy Unicorn rainbow parentheses! ---- {{{
"autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
autocmd Syntax * RainbowParenthesesActivate
" }}}


" Easytags ---- {{{
" Highlighting is currently way to slow to be used. This file takes 32 seconds
" of highlighting on my laptop. And async does not seem to help at all...
let g:easytags_dynamic_files = 2
let g:easytags_auto_highlight = 0
let g:easytags_async = 1
let g:easytags_events = ['BufWritePost']
" }}}

" TagBar ---- {{{
map <F3> :TagbarToggle<CR>
" }}}

" vim:foldmethod=marker:foldlevel=0
