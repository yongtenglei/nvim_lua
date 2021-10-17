autocmd FileType go nmap gr  <Plug>(go-run)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap gb :<C-u>call <SID>build_go_files()<CR>

autocmd FileType go nmap gc <Plug>(go-coverage-toggle)

let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
" Add tags using snake_case by default, you can set camelcase also
"let g:go_addtags_transform = "camelcase"

" Beautify go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

"autocmd BufNewFile,BufRead,BufWritePost *.go retab

" check
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_deadline = "5s"

" alternate in command mode
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

"also guru by default
let g:go_def_mode = 'godef'

" :GoDecls and :GoDeclsDir include
let g:go_decls_includes = "func,type"
"let g:go_decls_includes = "func"

" go info
autocmd FileType go nmap gh <Plug>(go-info)
let g:go_auto_type_info = 1
set updatetime=100

"let g:go_auto_sameids = 1

let g:go_play_browser_command = "firefox"
