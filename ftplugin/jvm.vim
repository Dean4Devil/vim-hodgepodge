" JVM specific settings. Only for settings that apply to all JVM based
" languages!
runtime ftplugin/code.vim

let g:EclimCompletionMethod = 'omnifunc'
let g:EclimBrowser = 'firefox'

let g:deoplete#omni#functions.java = ['eclim#java#complete#CodeComplete']
