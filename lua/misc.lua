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
vim.api.nvim_create_autocmd({ 'BufReadPre', 'BufNewFile' }, {
  pattern = vim.fn.expand "~" .. "/Obsidian/**.md",
  command = 'setlocal conceallevel=1',
  group = 'DynamicConceal'
})

-- [[ Dynamic hybrid line numbers ]]
vim.api.nvim_create_augroup('HybridNumberToggle', { clear = true })
vim.api.nvim_create_autocmd({ 'BufEnter', 'FocusGained', 'InsertLeave', 'WinEnter' }, {
  pattern = '*',
  command = 'if &nu && mode() != "i" | set rnu   | endif',
  group = 'HybridNumberToggle',
})
vim.api.nvim_create_autocmd({ 'BufLeave', 'FocusLost', 'InsertEnter', 'WinLeave' }, {
  pattern = '*',
  command = 'if &nu                  | set nornu | endif',
  group = 'HybridNumberToggle',
})
