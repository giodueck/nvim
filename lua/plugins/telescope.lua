local actions = require "telescope.actions"
local action_layout = require("telescope.actions.layout")
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<M-p>"] = action_layout.toggle_preview,
      },
      n = {
        ["<M-p>"] = action_layout.toggle_preview,
      }
    },
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<M-d>"] = actions.delete_buffer + actions.move_to_top,
        },
      },
    },
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- custom mappings here
        },
        ["n"] = {
          -- custom mappings here
        },
      },
      hidden = true,
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'file_browser')
