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

vim.keymap.set('n', '<leader>fd', require('telescope.builtin').find_files, { desc = '[F]in[d] Files' })
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

vim.api.nvim_set_keymap(
  "n",
  "<leader>cd",
  ":Telescope file_browser files=false<CR>",
  { noremap = true, desc = 'Find Directory' }
)

-- [[ Hex editor ]]
vim.api.nvim_set_keymap(
  "n",
  "<leader>x",
  "<cmd>lua require 'hex'.toggle()<CR>",
  { noremap = true, desc = 'Toggle He[X] Editor' }
)

-- [[ LSP ]]
vim.keymap.set("n", "<leader>ff", ":lua vim.lsp.buf.format()<CR>", { noremap = true, desc = "[F]ormat [F]ile" })

-- [[ Vim Fugitive ]]
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
  { noremap = true, desc = '[G]it Log [O]neline' }
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

vim.api.nvim_set_keymap(
  "n",
  "<leader>gmc",
  ":Gvdiffsplit!<CR>",
  { noremap = true, desc = '[G]it [M]erge [C]onflict: 3 way diff split' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>glf",
  ":lua vim.cmd(\"Git log --follow \" .. vim.fn.expand('%'))<CR>",
  { noremap = true, desc = '[G]it [L]og [F]ollow current file' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>glof",
  ":lua vim.cmd(\"Git log --oneline --follow \" .. vim.fn.expand('%'))<CR>",
  { noremap = true, desc = '[G]it [L]og [O]neline [F]ollow current file' }
)

-- [[ Obsidian ]]
vim.api.nvim_set_keymap(
  "n",
  "<leader>ot",
  ":ObsidianTemplate<CR>",
  { noremap = true, desc = 'Obsidian: insert template' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>ob",
  ":ObsidianBacklinks<CR>",
  { noremap = true, desc = 'Obsidian: show backlinks' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>oa",
  ":ObsidianTags<CR>",
  { noremap = true, desc = 'Obsidian: tags' }
)

-- [[ Treesitter ]]
vim.api.nvim_set_keymap(
  "n",
  "<leader>ts",
  ":lua vim.treesitter.stop(vim.api.nvim_buf_get_number(0))<CR>",
  { noremap = true, desc = 'Stop Treesitter for current buffer' }
)

-- [[ Harpoon ]]
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = 'Harpoon: add current buffer' })
vim.keymap.set("n", "<leader>d", function() harpoon:list():remove() end, { desc = 'Harpoon: remove current buffer' })
vim.keymap.set("n", "<leader>n", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon: toggle quick menu' })

vim.keymap.set("n", "<M-1>", function() harpoon:list():select(1) end, { desc = 'Harpoon: Go to first harpoon item' })
vim.keymap.set("n", "<M-2>", function() harpoon:list():select(2) end, { desc = 'Harpoon: Go to second harpoon item' })
vim.keymap.set("n", "<M-3>", function() harpoon:list():select(3) end, { desc = 'Harpoon: Go to third harpoon item' })
vim.keymap.set("n", "<M-4>", function() harpoon:list():select(4) end, { desc = 'Harpoon: Go to fourth harpoon item' })
vim.keymap.set("n", "<M-5>", function() harpoon:list():select(5) end, { desc = 'Harpoon: Go to fourth harpoon item' })
vim.keymap.set("n", "<M-6>", function() harpoon:list():select(6) end, { desc = 'Harpoon: Go to fourth harpoon item' })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-N>", function() harpoon:list():next() end)

-- [[ Async Tasks ]]

-- Fuzzy find over current tasks
vim.api.nvim_set_keymap(
  "n",
  "<leader>ta",
  ":Telescope asynctasks all<CR>",
  { noremap = true, desc = "Run a task" }
)
-- require('telescope').extensions.asynctasks.all()

-- Async tasks should open the quickfix-list
vim.g.asyncrun_open = 9
