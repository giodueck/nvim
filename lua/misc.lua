-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Set conceallevel only for certain files ]]
vim.api.nvim_create_augroup('DynamicConceal', { clear = true })
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'markdown',
  command = 'setlocal conceallevel=1',
  group = 'DynamicConceal'
})
