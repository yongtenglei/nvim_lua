let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-diagnostic',
  \ 'coc-eslint',
  \ 'coc-explorer',
  \ 'coc-flutter-tools',
  \ 'coc-gitignore',
  \ 'coc-git',
  \ 'coc-import-cost',
  \ 'coc-json',
  \ 'coc-lists',
  \ 'coc-go',
  \ 'coc-prettier',
  \ 'coc-prisma',
  \ 'coc-pyright',
  \ 'coc-snippets',
  \ 'coc-sourcekit',
  \ 'coc-stylelint',
  \ 'coc-syntax',
  \ 'coc-tailwindcss',
  \ 'coc-tasks',
  \ 'coc-translator',
  \ 'coc-tslint-plugin',
  \ 'coc-tsserver',
  \ 'coc-vetur',
  \ 'coc-vimlsp',
  \ 'coc-vimtex',
  \ 'coc-yaml',
  \ 'coc-yank',
  \ 'coc-pairs',
  \ 'coc-html',
  \ 'coc-htmldjango',
  \ 'coc-htmlhint',
  \ 'coc-html-css-support',
  \ 'coc-highlight',
  \ 'coc-clangd',
  \ 'coc-java',
  \ 'coc-db',
  \ 'coc-markdownlint']

set hidden

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use <c-l> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-l> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<cr>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>=<Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

"coc-snippet

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-e> <Plug>(coc-snippets-select)
imap <C-l> <Plug>(coc-snippets-expand)
imap <C-e> <Plug>(coc-snippets-expand-jump)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-e>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-n>'

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

"Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? coc#_select_confirm() :
    \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" coc-explorer
nnoremap tt :CocCommand explorer<CR>

" coc-translator
nmap ts <Plug>(coc-translator-p)

" coc-yank
nnoremap <silent> <leader>y :<C-u>CocList -A --normal yank<cr>

