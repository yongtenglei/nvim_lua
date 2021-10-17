-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rey/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/rey/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/rey/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/rey/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rey/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  DidYouMean = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/DidYouMean"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  indentLine = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lf.vim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/lf.vim"
  },
  ["markdown-preview.nvim"] = {
    commands = { "MarkdownPreview" },
    loaded = false,
    needs_bufread = false,
    path = "/home/rey/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/rainbow"
  },
  ripgrep = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/ripgrep"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/splitjoin.vim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/suda.vim"
  },
  tabular = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-coloresque"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-coloresque"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-scrollstatus"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-scrollstatus"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-table-mode"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  vimtex = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vimtex"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/vista.vim"
  },
  ["wildfire.vim"] = {
    loaded = true,
    path = "/home/rey/.local/share/nvim/site/pack/packer/start/wildfire.vim"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MarkdownPreview lua require("packer.load")({'markdown-preview.nvim'}, { cmd = "MarkdownPreview", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
