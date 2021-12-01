let g:onedark_termcolors=256
let g:onedark_terminal_italics=1

try
    colorscheme onedark
catch /^Vim\%((\a\+)\)\=:E185/
    " deal with it
endtry
