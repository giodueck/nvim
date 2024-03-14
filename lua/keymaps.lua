-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Split screen and window navigation
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { noremap = true, desc = '[V]ertical split' })
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true, desc = 'Focus left window' })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true, desc = 'Focus right window' })
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>", { noremap = true, desc = 'Focus window below' })
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>", { noremap = true, desc = 'Focus window above' })
vim.keymap.set("n", "<leader>.", "10<C-w>>", { noremap = true, desc = 'Increase window width' })
vim.keymap.set("n", "<leader>,", "10<C-w><", { noremap = true, desc = 'Decrease window width' })
vim.keymap.set("n", "<leader>wo", "<C-w>o", { noremap = true, desc = 'Close all other windows' })

-- Move lines up or down in normal, insert or visual modes with <A-j> and <A-k>
vim.cmd("nnoremap <A-j> :m .+1<CR>==")
vim.cmd("nnoremap <A-k> :m .-2<CR>==")
vim.cmd("inoremap <A-j> <Esc>:m .+1<CR>==gi")
vim.cmd("inoremap <A-k> <Esc>:m .-2<CR>==gi")
vim.cmd("vnoremap <A-j> :m '>+1<CR>gv=gv")
vim.cmd("vnoremap <A-k> :m '<-2<CR>gv=gv")

-- Terminal mode
vim.cmd("tnoremap <Esc> <C-\\><C-n>")

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

-- Destroy buffer
--  Changed to "gq": some vim-fugitive windows have this command, but not all for some reason
vim.keymap.set("n", "gq", ":bd<CR>", { noremap = true, desc = 'Destroy current buffer' })

-- Vertical navigation
vim.cmd("nnoremap <C-d> <C-d>zz")
vim.cmd("nnoremap <C-u> <C-u>zz")
