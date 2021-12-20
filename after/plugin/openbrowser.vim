" default netrw is not working anymore, switch to a custom plugin
" (open-browser.vim)  https://github.com/vim/vim/issues/4738
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
