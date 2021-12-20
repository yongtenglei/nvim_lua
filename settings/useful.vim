" Compile function
"map r :call CompileRunGcc()<CR>
"func! CompileRunGcc()
  "exec "w"
  "if &filetype == 'c'
  "exec "!g++ % -o %<"
  "exec "!time ./%<"
  "elseif &filetype == 'cpp'
  "exec "!g++ % -o %<"
  "exec "!time ./%<"
  "elseif &filetype == 'java'
  "exec "!javac %"
  "exec "!time java %<"
  "elseif &filetype == 'sh'
  ":!time bash %
  "elseif &filetype == 'python'
  "silent! exec "!clear"
  "exec "!time python3 %"
  "elseif &filetype == 'html'
  "exec "!firefox % &"
  "elseif &filetype == 'markdown'
  "exec "MarkdownPreview"
  "elseif &filetype == 'vimwiki'
  "exec "MarkdownPreview"
  "elseif &filetype == 'go'
  "exec ":GoRun %"
  "endif
"endfunc

" Compile function
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    set splitbelow
    exec "!g++ -std=c++11 % -Wall -o %<"
    :sp
    :res -15
    :term ./%<
  elseif &filetype == 'java'
    set splitbelow
    :sp
    :res -5
    term javac % && time java %<
  elseif &filetype == 'rust'
    set splitbelow
    :sp
    :res -5
    term cargo run
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    set splitbelow
    :sp
    :term python3 %
  elseif &filetype == 'html'
    silent! exec "!".g:mkdp_browser." % &"
  elseif &filetype == 'markdown'
    exec ":MarkdownPreview"
  elseif &filetype == 'tex'
    silent! exec "VimtexStop"
    silent! exec "VimtexCompile"
  elseif &filetype == 'dart'
    exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
    silent! exec "CocCommand flutter.dev.openDevLog"
  elseif &filetype == 'javascript'
    set splitbelow
    :sp
    :term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
  elseif &filetype == 'go'
    set splitbelow
    :sp
    :term go run .
  endif
endfunc

" html config
" let g:mkdp_browser="firefox"
let g:mkdp_browser="waterfox"

" markdown snippets
source ~/.config/nvim/md-snippets.vim

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Perform dot commands over visual blocks:
	vnoremap . :normal .<CR>

" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e
	autocmd BufWritePre *.[ch] %s/\%$/\r/e

  " Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %
