vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'  -- Only really used with vimtex

-- Install plugin manager
require('plugins.lazy')

-- [[ Setting options ]]
require('options')

-- [[ Basic Keymaps ]]
require('keymaps')

-- [[ Miscelaneous snippets ]]
require('misc')

-- [[ Configure Telescope ]]
require('plugins.telescope')

-- [[ Configure Treesitter ]]
require('plugins.treesitter')

-- [[ LSP settings ]]
require('plugins.lsp')

-- [[ nvim-cmp setup ]]
require('plugins.nvim-cmp')

-- [[ Tokyonight theme ]]
require('plugins.tokyonight')

-- [[ Various plugins have low to no configuration ]]
require('plugins.misc')

-- [[ VimTeX ]]
require('plugins.vimtex')

-- [[ Harpoon ]]
require('plugins.harpoon')

-- [[ Keymaps which involve plugins ]]
require('plugins.keymaps')
