-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', function () vim.diagnostic.jump({count=-1, float=true}) end, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', function () vim.diagnostic.jump({count=1, float=true}) end, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Split screen and window navigation
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { noremap = true, desc = 'Split window vertically', silent = true })
vim.keymap.set("n", "<leader>S", ":split<CR><C-w>j", { noremap = true, desc = 'Split window', silent = true })
vim.keymap.set("n", "<leader>.", "9<C-w>>", { noremap = true, desc = 'Increase window width' })
vim.keymap.set("n", "<leader>,", "9<C-w><", { noremap = true, desc = 'Decrease window width' })
vim.keymap.set("n", "<leader>=", "5<C-w>+", { noremap = true, desc = 'Increase window height' })
vim.keymap.set("n", "<leader>-", "5<C-w>-", { noremap = true, desc = 'Decrease window height' })

-- Move lines up or down in normal, insert or visual modes with <A-j> and <A-k>
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, desc = "Shift line down", silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, desc = "Shift line up", silent = true })
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, desc = "Shift line down", silent = true })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, desc = "Shift line up", silent = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, desc = "Shift selected lines down", silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, desc = "Shift selected lines up", silent = true })

-- Terminal mode
-- vim.cmd("tnoremap <Esc> <C-\\><C-n>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, desc = "Escape to normal mode", silent = true })

-- Destroy buffer
--  Changed to "gq": some vim-fugitive windows have this command, but not all for some reason
vim.keymap.set("n", "gq", ":bd<CR>", { noremap = true, desc = 'Destroy current buffer', silent = true })

-- Quit without destroying buffer
vim.keymap.set("n", "Q", ":q<CR>", { noremap = true, desc = 'Quit', silent = true })

-- Vertical navigation
vim.cmd("nnoremap <C-d> <C-d>zz")
vim.cmd("nnoremap <C-u> <C-u>zz")

-- Easier to reach escape in insert mode
vim.cmd("inoremap kj <Esc>")

-- Open and close quickfix window
vim.keymap.set("n", "<leader>co", ":cope<CR><C-w>J", { noremap = true, desc = 'Open quickfix window', silent = true })
vim.keymap.set("n", "<leader>cc", ":cclo<CR>", { noremap = true, desc = 'Close quickfix window', silent = true })

-- Tabs
vim.keymap.set("n", "<leader>[<C-i>", ":tabp<CR>", { noremap = true, desc = "Go to previous tab", silent = true })
vim.keymap.set("n", "<leader>]<C-i>", ":tabn<CR>", { noremap = true, desc = "Go to next tab", silent = true })
vim.keymap.set("n", "<leader><C-i><C-i>", ":tabnew<CR>", { noremap = true, desc = "Open new tab", silent = true })

-- Repeat last macro
vim.keymap.set("n", "<M-@>", "@@", { noremap = true, desc = "Repeat last macro (@@)", silent = true })

-- Insert the current date in YYYY-MM-DD format
vim.keymap.set("n", "<leader>id", "\"=strftime('%Y-%m-%d')<CR>p", {noremap = true, desc = "Insert the current date in YYYY-MM-DD format", silent = true})

-- Unmap defaults related to lsp since they collide with the ones I use and cause a delay on "gr"
vim.keymap.del("n", "gri")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gra")
vim.keymap.del("x", "gra")
vim.keymap.del("n", "grn")
