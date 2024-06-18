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
  ":Git log --oneline<CR>",
  { noremap = true, desc = '[G]it [L]og --oneline' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gL",
  ":Git log<CR>",
  { noremap = true, desc = '[G]it [L]og' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gf",
  ":lua vim.cmd(\"Git log --oneline --follow \" .. vim.fn.expand('%'))<CR>",
  { noremap = true, desc = '[G]it Log --oneline [F]ollow current file' }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gF",
  ":lua vim.cmd(\"Git log --follow \" .. vim.fn.expand('%'))<CR>",
  { noremap = true, desc = '[G]it Log [F]ollow current file' }
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
  "<leader>ga",
  ":Git add % | doautocmd BufWritePost<CR>",
  { noremap = true, desc = '[G]it [A]dd current file', silent = true }
)
