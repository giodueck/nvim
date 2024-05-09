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

