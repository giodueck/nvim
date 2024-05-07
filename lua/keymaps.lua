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
vim.keymap.set("n", "<leader>s", ":split<CR><C-w>j", { noremap = true, desc = '[S]plit' })
vim.keymap.set("n", "<leader>.", "9<C-w>>", { noremap = true, desc = 'Increase window width' })
vim.keymap.set("n", "<leader>,", "9<C-w><", { noremap = true, desc = 'Decrease window width' })
vim.keymap.set("n", "<leader>-", "5<C-w>-", { noremap = true, desc = 'Increase window height' })
vim.keymap.set("n", "<leader>=", "5<C-w>+", { noremap = true, desc = 'Decrease window height' })

-- Move lines up or down in normal, insert or visual modes with <A-j> and <A-k>
vim.cmd("nnoremap <A-j> :m .+1<CR>==")
vim.cmd("nnoremap <A-k> :m .-2<CR>==")
vim.cmd("inoremap <A-j> <Esc>:m .+1<CR>==gi")
vim.cmd("inoremap <A-k> <Esc>:m .-2<CR>==gi")
vim.cmd("vnoremap <A-j> :m '>+1<CR>gv=gv")
vim.cmd("vnoremap <A-k> :m '<-2<CR>gv=gv")

-- Terminal mode
vim.cmd("tnoremap <Esc> <C-\\><C-n>")

-- Destroy buffer
--  Changed to "gq": some vim-fugitive windows have this command, but not all for some reason
vim.keymap.set("n", "gq", ":bd<CR>", { noremap = true, desc = 'Destroy current buffer' })

-- Vertical navigation
vim.cmd("nnoremap <C-d> <C-d>zz")
vim.cmd("nnoremap <C-u> <C-u>zz")

-- Easier to reach escape on insert mode
vim.cmd("inoremap kj <Esc>")

-- Open and close quickfix window
vim.cmd("nnoremap <leader>co :cope<CR>")
vim.cmd("nnoremap <leader>cc :cclo<CR>")
