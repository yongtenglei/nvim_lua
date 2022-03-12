" basic setting
runtime ./settings/common.vim

" plugin management
"./lua/plugins.lua
lua require('plugins')
" lua line
lua require('lualine_init')
" buffer line
lua require('bufferline_init')
" tab line
"lua require('tabline_init')
" marks
lua require('marks_init')
" indent_blankline
lua require('indent_blankline_init')
" transparent
lua require('transparent_init')


"source ~/.config/nvim/after/plugin/minimap.vim
"source ~/.config/nvim/after/plugin/scrollbar.vim
source ~/.config/nvim/after/plugin/lf.vim
source ~/.config/nvim/after/plugin/vimtex.vim
source  ~/.config/nvim/settings/go_config.vim

" 按键映射
runtime ./settings/maps.vim

" useful thing
source ~/.config/nvim/settings/useful.vim

source ~/.config/nvim/after/plugin/rainbow_parentheses.vim
"source ~/.config/nvim/after/plugin/scrollstatus.vim


" themes basic
source ~/.config/nvim/themes/theme.nvim
" themes
"source ~/.config/nvim/themes/onedark.vim
"source ~/.config/nvim/themes/shades_of_purple.vim
"source ~/.config/nvim/themes/gruvbox_material.vim
source ~/.config/nvim/themes/kanagawa.vim
