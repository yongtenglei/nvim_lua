let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
" wild menu and allow it pop longest hint first
set wildmenu
set wildmode=longest:list,full
set nobackup

" no swap or
"silent !mkdir -p ~/.config/nvim/tmp/backup
"set directory=~/.config/nvim/tmp/backup
set noswapfile

" persistent undo
set undofile
silent !mkdir -p ~/.config/nvim/tmp/undo
set undodir=~/.config/nvim/tmp/undo
"forgot undo in temp file
if !has('nvim')
  set undodir=~/.vim/undo
endif
augroup vimrc
  autocmd!
  autocmd BufWritePre /tmp/* setlocal noundofile
augroup END


set spell spelllang=en_us

inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap < <><ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap {<CR> {<CR>}<ESC>O


set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

"进行分屏
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>

"分屏cursor切换
noremap <LEADER>ww <C-w>w
noremap <LEADER>i <C-w>l
noremap <LEADER>u <C-w>k
noremap <LEADER>n <C-w>h
noremap <LEADER>e <C-w>j
noremap qf <C-w>o

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>qq <C-w>j:q<CR>

"切换竖直sh or水平分屏sv
noremap sv <C-w>t<C-w>H
noremap sh <C-w>t<C-w>K

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" adjust windows size
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize+5<CR>
noremap <right> :vertical resize-5<CR>

"tab management
noremap tu :tabe<CR>
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>

" Move the tabs with tmh and tml
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>

set mouse=a
set encoding=utf-8
"set guifont=DejaVu_Sans_Mono_Font
"set guifont=Fira_Code_Font
set guifont=Cascadia_Code_PL
set showmatch
let &t_ut=''
set expandtab
set autoindent
set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set nolist
set listchars=tab:▸\ ,trail:▫
set scrolloff=10
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<sc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
set autowrite
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set clipboard=unnamed,unnamedplus
" improve scrolling performance when navigating through large results
set lazyredraw


set nocompatible
filetype on
filetype indent on
filetype plugin on
" auto indent based file type
filetype plugin indent on
set shell=/bin/bash

" ===
" === useful script
" ===
"source ./codeinfo.vim
"autocmd BufNewFile *.sh,*.script exec ":call InfoBash()"
"autocmd BufNewFile *.c,*.cpp exec ":call InfoCFamily()"

" ===
" === Terminal Behaviors
" ===

"term cursor

if has('nvim')
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
endif

highlight Normal guibg=NONE ctermbg=None

"windows motion
if has('nvim')
  tnoremap <leader>n <c-\><c-n><c-w>h
  tnoremap <leader>e <c-\><c-n><c-w>j
  tnoremap <leader>u <c-\><c-n><c-w>k
  tnoremap <leader>i <c-\><c-n><c-w>l
endif

"to normal mode
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif

let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
" go back to normal
"tnoremap <C-N> <C-\><C-N>
" go back to last screen
tnoremap <C-O> <C-\><C-N><C-O>

"edit command line in nvim
tnoremap <C-n> <C-x><C-e>

let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

" ===
" === quickfix and location fix
" ===

noremap co :copen<CR>
noremap cm :cnext<CR>
noremap ck :cprevious<CR>
nnoremap cc :cclose<CR>

noremap zo :lopen<CR>
noremap zm :lnext<CR>
noremap zk :lprevious<CR>
nnoremap zc :lclose<CR>
