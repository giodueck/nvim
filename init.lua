vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'  -- Only really used with vimtex

-- Install plugin manager and plugins
require('plugins.lazy')

-- [[ Setting options ]]
require('options')

-- [[ Basic Keymaps ]]
require('keymaps')

-- [[ Miscelaneous snippets ]]
require('misc')

-- Essential basic plugins
-- [[ Configure Telescope ]]
require('plugins.telescope')

-- [[ Configure Treesitter ]]
require('plugins.treesitter')

-- [[ LSP settings ]]
require('plugins.lsp')

-- Various plugins
-- [[ Tasks plugin ]]
require('plugins.async_tasks')

-- [[ Vim Fugitive ]]
require('plugins.git')

-- [[ Indentation highlighting ]]
require('plugins.indent_blankline')

require('plugins.harpoon')

-- [[ Hex editor ]]
require('plugins.hex')

-- [[ Snippets ]]
require('plugins.nvim-cmp')

require('plugins.obsidian')

-- [[ Debugprint ]]
require('plugins.debugprint')

-- [[ Tmux integration ]]
require('plugins.tmux')

-- [[ Tokyonight theme ]]
require('plugins.tokyonight')

require('plugins.vimtex')

-- Keymap help
-- [[ Which-key ]]
require('plugins.which-key')
