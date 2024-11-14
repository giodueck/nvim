local actions = require "telescope.actions"
local action_layout = require("telescope.actions.layout")

-- Selects all selected buffers, or the one under the curser if none are selected
local select_one_or_multi = function(prompt_bufnr)
  local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
  local multi = picker:get_multi_selection()
  if not vim.tbl_isempty(multi) then
    require('telescope.actions').close(prompt_bufnr)
    for _, j in pairs(multi) do
      if j.path ~= nil then
        vim.cmd(string.format('%s %s', 'edit', j.path))
      end
    end
  else
    require('telescope.actions').select_default(prompt_bufnr)
  end
end

-- Yank the base name of the file under the cursor
local yank_file_basename = function()
  local entry = require('telescope.actions.state').get_selected_entry()
  vim.fn.setreg('+', entry.ordinal)
  vim.schedule(function() print(entry.ordinal .. " sent to clipboard") end)
end

-- Yank the cwd-relative name of the file under the cursor
local yank_file_name = function()
  local entry = require('telescope.actions.state').get_selected_entry()
  local prefix = entry.Path._cwd .. entry.Path._sep
  local filename = string.gsub(entry.path, prefix, "", 1)
  vim.fn.setreg('+', filename)
  vim.schedule(function() print(filename .. " sent to clipboard") end)
end

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<M-p>"] = action_layout.toggle_preview,
        ["<S-CR>"] = select_one_or_multi,
        ["<C-a>"] = actions.toggle_all,
      },
      n = {
        ["p"] = action_layout.toggle_preview,
        ["<S-CR>"] = select_one_or_multi,
        ["<C-a>"] = actions.toggle_all,
      }
    },
    prompt_prefix = ' ',
    selection_caret = '󰼛 ',
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<M-d>"] = actions.delete_buffer,
        },
        n = {
          ["<M-d>"] = actions.delete_buffer,
        },
      },
    },
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<M-n>"] = yank_file_basename,
          ["<M-N>"] = yank_file_name,
        },
        ["n"] = {
          ["n"] = yank_file_basename,
          ["N"] = yank_file_name,
        },
      },
      hidden = true,
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'file_browser')

-- Keymaps
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = 'Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = 'Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = 'Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>fd', require('telescope.builtin').find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = 'Search Help' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = 'Search current Word' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = 'Search by Grep' })
vim.keymap.set('n', '<leader>rg', require('telescope.builtin').live_grep, { desc = 'Search with ripgrep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = 'Search Diagnostics' })
vim.keymap.set('n', '<leader>so', require('telescope.builtin').oldfiles, { desc = 'Search Recent files (Oldfiles)' })

vim.api.nvim_set_keymap(
  "n",
  "<leader>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true, desc = 'File Browser in buffer path', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>fB",
  ":Telescope file_browser<CR>",
  { noremap = true, desc = 'File Browser in cwd', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>cd",
  ":Telescope file_browser files=false<CR>",
  { noremap = true, desc = 'Find Directory', silent = true }
)
