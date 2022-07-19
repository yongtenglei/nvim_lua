" ===
" === Basic Mappings
" ===
noremap ; :

" Save
noremap <c-u> :w<ESC>

" For ESC in insert mode
inoremap <c-u> <ESC>

" Quick quit
noremap Q :q!<Enter>

" Undo operations
noremap l u

" Insert Key
noremap k i
noremap K I

"no s
noremap s <nop>

" Open or source the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>
noremap <LEADER>src :e ~/.config/nvim/lua/plugins.lua<CR>

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
"nnoremap <LEADER>gt :%s/ /\t/g
"vnoremap <LEADER>gt :s/  /\t/g


" Folding
noremap <silent> <LEADER>o za

" ===
" === Cursor Movement
" ===
noremap <silent> u k
noremap <silent> n h
noremap <silent> e j
noremap <silent> i l

" U/E keys for 5 times u/e (faster navigation)
noremap <silent> U 5k
noremap <silent> E 5j

" yank to the end of line
noremap <silent> \v v$h

" go to the start of the line
noremap <silent> N 0
" go to the end of the line
noremap <silent> I $

" ===
" === Other useful stuff
" ===
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" go to placeholder <++> and edit
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>4xi

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" Call figlet
noremap tx :r !figlet

" find and replace
noremap \s :%s//gc<left><left>

" set wrap
noremap <LEADER>sw :set wrap<CR>

" buffer
noremap bn :bp<CR>
noremap bi :bn<CR>
