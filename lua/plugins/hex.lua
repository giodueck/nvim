require 'hex'.setup()
vim.api.nvim_set_keymap(
  "n",
  "<leader>xx",
  "<cmd>lua require 'hex'.toggle()<CR>",
  { noremap = true, desc = 'Toggle Hex Editor', silent = true }
)
