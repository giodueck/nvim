vim.g.mapleader = ' '

-- Install package manager
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

-- [[ Various plugins with low to no configuration ]]
require('plugins.misc')

-- VimTeX configs
vim.g.maplocalleader = '\\'  -- Only really used with vimtex
require('plugins.vimtex')

-- [[ Keymaps which involve plugins ]]
require('plugins.keymaps')
