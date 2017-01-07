source ~/.config/nvim/ftplugin/code.vim
source ~/.config/nvim/ftplugin/prose.vim

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:vimtex_index_split_pos = 'vert botright'

set makeprg=xelatex\ %

" Tagbar is less usefull than Table of Contents
unmap <F3>
map <F3> :VimtexTocToggle<CR>
