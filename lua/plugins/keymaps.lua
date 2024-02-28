-- [[ Telescope ]]
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

vim.api.nvim_set_keymap(
  "n",
  "<leader>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true, desc = '[F]ile [B]rowser in buffer path' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>fB",
  ":Telescope file_browser<CR>",
  { noremap = true, desc = '[F]ile [B]rowser in cwd' }
)

-- Same functions but without previewer enabled, which crashes sometimes with weird and/or big files

vim.api.nvim_set_keymap(
  "n",
  "<leader>sqf",
  ":lua require('telescope.builtin').find_files({previewer=false})<CR>",
  { noremap = true, desc = '[S]earch [F]iles without previewer' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>sqg",
  ":lua require('telescope.builtin').live_grep({previewer=false})<CR>",
  { noremap = true, desc = '[S]earch by [G]rep without previewer' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>fqb",
  ":Telescope file_browser path=%:p:h select_buffer=true previewer=false<CR>",
  { noremap = true, desc = '[F]ile [B]rowser in buffer path without previewer' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>fqB",
  ":Telescope file_browser previewer=false<CR>",
  { noremap = true, desc = '[F]ile [B]rowser in cwd without previewer' }
)

-- [[ Hex editor ]]
vim.api.nvim_set_keymap(
  "n",
  "<leader>x",
  "<cmd>lua require 'hex'.toggle()<CR>",
  { noremap = true, desc = 'Toggle He[X] Editor' }
)

-- auto format document
vim.keymap.set("n", "<leader>ff", ":lua vim.lsp.buf.format()<CR>", { noremap = true, desc = "[F]ormat [F]ile" })

-- Git keymaps
vim.api.nvim_set_keymap(
  "n",
  "<leader>gb",
  ":Git blame<CR>",
  { noremap = true, desc = '[G]it [B]lame' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gs",
  ":Git<CR>",
  { noremap = true, desc = '[G]it [S]tatus' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gl",
  ":Git log<CR>",
  { noremap = true, desc = '[G]it [L]og' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>glo",
  ":Git log --oneline<CR>",
  { noremap = true, desc = '[G]it Log --o[n]eline' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gc",
  ":Git commit -m '",
  { noremap = true, desc = '[G]it [C]ommit' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gps",
  ":Git push<CR>",
  { noremap = true, desc = '[G]it [P]u[s]h' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gpl",
  ":Git pull<CR>",
  { noremap = true, desc = '[G]it [P]u[l]l' }
)

-- Git merge conflict mappings

vim.api.nvim_set_keymap(
  "n",
  "<leader>gmc",
  ":Gvdiffsplit!<CR>",
  { noremap = true, desc = '[G]it [M]erge [C]onflict: 3 way diff split' }
)


-- Terminal shortcuts
vim.api.nvim_set_keymap(
  "n",
  "<leader>tt",
  ":term<CR>i",
  { noremap = true, desc = 'Open terminal' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>tv",
  ":vsplit<CR><C-w>l:term<CR>i",
  { noremap = true, desc = 'Open terminal in new vertical window' }
)

-- [[ Obsidian ]]
vim.api.nvim_set_keymap(
  "n",
  "<leader>ot",
  ":ObsidianTemplate<CR>",
  { noremap = true, desc = 'Obsidian: insert template' }
)
