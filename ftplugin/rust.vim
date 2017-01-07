" Rust specific settings
source ~/.config/nvim/ftplugin/code.vim

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

let g:deoplete#delimiters += ['::', '.']

let g:deoplete#sources#rust#racer_binary='/home/dean/.local/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/dean/Development/rust-lang/src'

let g:racer_cmd = "/home/dean/Development/rust-racer/target/release/racer"
let $RUST_SRC_PATH="/home/dean/Development/rust-lang/src"

let g:neomake_rust_enabled_makers = []
