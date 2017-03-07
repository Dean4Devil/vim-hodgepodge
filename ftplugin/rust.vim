" Rust specific settings
runtime ftplugin/code.vim

let g:tagbar_type_rust = {
	\ 'ctagstype' : 'rust',
	\ 'kinds' : [
		\'T:types,type definitions',
		\'f:functions,function definitions',
		\'g:enum,enumeration names',
		\'s:structure names',
		\'m:modules,module names',
		\'c:consts,static constants',
		\'t:traits,traits',
		\'i:impls,trait implementations',
	\]
	\}

let g:deoplete#delimiters = ['::', '.']

let g:deoplete#sources#rust#racer_binary='/usr/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/usr/src/rust'

let g:racer_cmd = "/usr/bin/racer"
let $RUST_SRC_PATH="/usr/src/rust/src"

autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWrite *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&"
