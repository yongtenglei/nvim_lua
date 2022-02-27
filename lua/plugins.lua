---@diagnostic disable: undefined-global
--在没有安装packer的电脑上，自动安装packer插件
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
   --fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})	--默认地址
  fn.system({'git', 'clone', '--depth', '1', 'https://codechina.csdn.net/mirrors/wbthomason/packer.nvim.git', install_path})	--csdn加速镜像
	vim.cmd 'packadd packer.nvim'
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
	function()
use{
'wbthomason/packer.nvim'}-- Packer can manage itself

-- air line
--use{'vim-airline/vim-airline',
--requires = {
--'vim-airline/vim-airline-themes',
----综合图标支持such vim-airline lightline, vim-startify
---- 'ryanoasis/vim-devicons',
--'kyazdani42/nvim-web-devicons'
--}}

-- vim-scrollstatus (for airline)
--use{'ojroques/vim-scrollstatus'}

-- lualine
use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

-- themes
use{'sainnhe/gruvbox-material',
'joshdick/onedark.vim',
'Rigellute/shades-of-purple.vim',
'rebelot/kanagawa.nvim'}


-- telescote.nvim
-- install modlue
-- TSInstall bash c cmake cpp css dockerfile go  gomod html http json latex lua make python rust vim vue yaml toml
use{'BurntSushi/ripgrep'} --requires
use {
'nvim-treesitter/nvim-treesitter',
run = ':TSUpdate'
}
-- requires
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- requires
use {
'nvim-telescope/telescope.nvim',
requires = { {'nvim-lua/plenary.nvim'} }
}

-- tabline.nvim
--use {
  --'kdheepak/tabline.nvim',
  --config = function()
    --vim.cmd[[
      --set guioptions-=e " Use showtabline in gui vim
      --set sessionoptions+=tabpages,globals " store tabpages and globals in session
    --]]
  --end
--}

-- bufferline.nvim
use {'akinsho/bufferline.nvim'}

-- html css javascript
use {'gko/vim-coloresque'}
use {'mattn/emmet-vim'}

  -- table mode
use {'dhruvasagar/vim-table-mode'}

-- suda.vim
use {'lambdalisue/suda.vim'}

-- snippets
use{ 'honza/vim-snippets'}
--use{'SirVer/ultisnips'}

-- latex
use{'lervag/vimtex'}

-- visual-multi
use{'mg979/vim-visual-multi'}

-- wildfire.vim
use{'gcmt/wildfire.vim'}

-- vista
use{'liuchengxu/vista.vim'}

-- vim-starttify
use{'mhinz/vim-startify'}

-- vim-go
use{'fatih/vim-go',  run = ':GoInstallBinaried'}
use{'AndrewRadev/splitjoin.vim'}

-- vim-rust
use{'rust-lang/rust.vim'}

-- vim-surround
use{'tpope/vim-surround'}

-- indent line
--use{'Yggdroot/indentLine'}
use "lukas-reineke/indent-blankline.nvim"

-- rainbow parentheses
use{'luochen1990/rainbow'}

-- 注释 <leader>cc 反注释 <leader>cu
use{'scrooloose/nerdcommenter'}

-- fl
use{'ptzz/lf.vim'}

-- floaterm
use{'voldikss/vim-floaterm'}

-- Did you mean
use{'EinfachToll/DidYouMean'}

--marks
use {'chentau/marks.nvim'}

-- coc-nvim
use{'neoclide/coc.nvim', branch= 'release'}

-- json
use{
  'elzr/vim-json',
  ft = {'json'}
}

-- docker file
use{
  'ekalinin/Dockerfile.vim',
  ft = {'Dockerfile'}
}

-- toml file
use{'cespare/vim-toml'}

-- open-browser for plantuml
-- need install graphviz
use{'tyru/open-browser.vim', ft = {'plantuml'}, event = 'BufEnter'}
--use {'sheerun/vim-polyglot', ft = {'plantuml', 'markdown'}}
--use {'weirongxu/plantuml-previewer.vim', ft = {'plantuml'}, event = 'BufEnter'}

-- which key
--use {"folke/which-key.nvim"}

-- minimap.vim
--use{
  --'wfxr/minimap.vim',
  --run = 'cargo install --locked code-minimap'
--}

-- scrollbar (the same motivation as minimap)
--use {'Xuyuanp/scrollbar.nvim'}

-- markdown
use{'godlygeek/tabular'} -- requires
use{'plasticboy/vim-markdown'}
--use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}

	end,
	config = {
		max_jobs = 16,
		git = {
			--default_url_format = 'https://hub.fastgit.org/%s'
		},
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
})
