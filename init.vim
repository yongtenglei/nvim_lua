" basic setting
runtime ./settings/common.nvim

" plugin management
"./lua/plugins.lua
lua require('plugins')

" 按键映射
runtime ./settings/maps.nvim

" useful thing
source ~/.config/nvim/settings/useful.vim

source ~/.config/nvim/after/plugin/scrollstatus.vim
" themes basic
source ~/.config/nvim/themes/theme.nvim
" themes
source ~/.config/nvim/themes/onedark.vim
"source ~/.config/nvim/themes/gruvbox_material.vim
