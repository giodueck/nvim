require 'hex'.setup()
vim.api.nvim_set_keymap(
  "n",
  "<leader>x",
  "<cmd>lua require 'hex'.toggle()<CR>",
  { noremap = true, desc = 'Toggle He[X] Editor' }
)
