" basic setting
runtime ./settings/common.vim

" plugin management
"./lua/plugins.lua
lua require('plugins')

source ~/.config/nvim/after/plugin/lf.vim
source  ~/.config/nvim/settings/go_config.vim

" 按键映射
runtime ./settings/maps.nvim

" useful thing
source ~/.config/nvim/settings/useful.vim

source ~/.config/nvim/after/plugin/rainbow_parentheses.vim
source ~/.config/nvim/after/plugin/scrollstatus.vim
" themes basic
source ~/.config/nvim/themes/theme.nvim
" themes
source ~/.config/nvim/themes/onedark.vim
"source ~/.config/nvim/themes/gruvbox_material.vim
