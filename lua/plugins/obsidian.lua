vim.api.nvim_set_keymap(
  "n",
  "<leader>ot",
  ":ObsidianTemplate<CR>",
  { noremap = true, desc = 'Obsidian: insert template', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>ob",
  ":ObsidianBacklinks<CR>",
  { noremap = true, desc = 'Obsidian: show backlinks', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>oa",
  ":ObsidianTags<CR>",
  { noremap = true, desc = 'Obsidian: tags', silent = true }
)

