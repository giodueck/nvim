local bitbake = {
    left = 'bbwarn "',
    left_var = 'bbwarn "', -- `left_var` is optional, for 'variable' lines only; `left` will be used if it's not present
    right = '"',
    mid_var = "${",
    right_var = '}"',
}

require('debugprint').setup({ filetypes = { ["bitbake"] = bitbake, }})

vim.api.nvim_set_keymap(
  "n",
  "g?r",
  ":Debugprint resetcounter<CR>",
  { noremap = true, desc = 'Debugprint resetcounter', silent = true }
)
