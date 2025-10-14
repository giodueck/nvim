local actions = require "telescope.actions"
local action_layout = require("telescope.actions.layout")
local fb_actions = require "telescope".extensions.file_browser.actions

-- Selects all selected buffers, or the one under the curser if none are selected
local select_one_or_multi = function(prompt_bufnr)
  local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
  local multi = picker:get_multi_selection()
  local opened = 0
  if not vim.tbl_isempty(multi) then
    require('telescope.actions').close(prompt_bufnr)
    for _, j in pairs(multi) do
      if j.path ~= nil then
        -- Open the first buffer in the list normally, then open the rest in vertical splits
        if opened == 0 then
          vim.cmd(string.format('%s %s', 'edit', j.path))
          opened = 1
        else
          vim.cmd(string.format('%s %s', 'vsplit', j.path))
        end
      end
    end
  else
    require('telescope.actions').select_default(prompt_bufnr)
  end
end

-- Sets depth to 1 and selects default
local reset_depth_select_default = function(prompt_bufnr)
  local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
  picker.finder.depth = 1
  require('telescope.actions').select_default(prompt_bufnr)
end

-- Yank the base name of the file under the cursor
-- Actually yanks the name in the telescope entry, including the search text for grep e.g.
local yank_file_basename = function()
  local entry = require('telescope.actions.state').get_selected_entry()
  vim.fn.setreg('+', entry.ordinal)
  vim.schedule(function() print(entry.ordinal .. " sent to clipboard") end)
end

-- Yank the full name of the file under the cursor
-- For file-browser copies the full path, for other pickers may not work
local yank_file_name = function()
  local entry = require('telescope.actions.state').get_selected_entry()
  local prefix = entry.Path._cwd .. entry.Path._sep
  local filename = string.gsub(entry.path, prefix, "", 1)
  vim.fn.setreg('+', filename)
  vim.schedule(function() print(filename .. " sent to clipboard") end)
end

-- Set execution permission of selected file with `chmod +x`
local make_executable = function()
  local entry = require('telescope.actions.state').get_selected_entry()
  os.execute('chmod +x ' .. entry.path)
  vim.cmd(":Telescope file_browser git_status=false path=" .. entry.path:match("@?(.*/)") .. " select_buffer=true<CR>")
end

-- Set execution permission of selected file with `chmod -x`
local make_non_executable = function()
  local entry = require('telescope.actions.state').get_selected_entry()
  os.execute('chmod -x ' .. entry.path)
  vim.cmd(":Telescope file_browser git_status=false path=" .. entry.path:match("@?(.*/)") .. " select_buffer=true<CR>")
end

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<M-p>"] = action_layout.toggle_preview,
        ["<S-CR>"] = select_one_or_multi,
        ["<C-a>"] = actions.toggle_all,
        ["<C-f>"] = actions.send_selected_to_qflist,
        ["<M-n>"] = yank_file_basename,
      },
      n = {
        ["p"] = action_layout.toggle_preview,
        ["<S-CR>"] = select_one_or_multi,
        ["<C-a>"] = actions.toggle_all,
        ["<C-f>"] = actions.send_selected_to_qflist,
        ["n"] = yank_file_basename,
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
          ["d"] = actions.delete_buffer,
        },
      },
    },
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<M-N>"] = yank_file_name,
          ["<CR>"] = reset_depth_select_default,
          ["<M-x>"] = make_executable,
          ["<M-X>"] = make_non_executable,
        },
        ["n"] = {
          ["N"] = yank_file_name,
          ["<CR>"] = reset_depth_select_default,
          ["x"] = make_executable,
          ["X"] = make_non_executable,
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
  ":Telescope file_browser path=%:p:h select_buffer=true git_status=false<CR>",
  { noremap = true, desc = 'File Browser in buffer path', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>fB",
  ":Telescope file_browser git_status=false<CR>",
  { noremap = true, desc = 'File Browser in cwd', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>cd",
  ":Telescope file_browser files=false depth=4 hidden=false<CR>",
  { noremap = true, desc = 'Find Directory', silent = true }
)
