let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_quickfix_mode=0
"set conceallevel=1
set conceallevel=2 "more Beautiful"
let g:tex_conceal='abdmg'

let g:vimtex_latexmk_option='pdf -pdflatex="xelatex -synctex=1 \%S \%O" -verbose -file-line-error -interaction=nonstopmode'
"let g:vimtex_compiler_latexmk_engines ='xelatex'
let g:vimtex_compiler_latexmk_engines = {'_': '-xelatex'}
"let g:vimtex_compiler_latexmk_engines = {
"\ '_'                : '-xelatex',
"\ 'pdflatex'         : '-pdf',
"\ 'dvipdfex'         : '-pdfdvi',
"\ 'lualatex'         : '-lualatex',
"\ 'xelatex'          : '-xelatex',
"\ 'context (pdftex)' : '-pdf -pdflatex=texexec',
"\ 'context (luatex)' : '-pdf -pdflatex=context',
"\ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
"\}

let g:vimtex_toc_config = {
\ 'name' : 'TOC',
\ 'layers' : ['content', 'todo', 'include'],
\ 'split_width' : 25,
\ 'todo_sorted' : 0,
\ 'show_help' : 1,
\ 'show_numbers' : 1,
\}
let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 --interaction=nonstopmode $*'
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
autocmd FileType tex noremap \tt :VimtexTocToggle<cr>
"autocmd FileType tex noremap <leader>c <localleader>lc
"autocmd FileType tex noremap <leader>v <localleader>lv
