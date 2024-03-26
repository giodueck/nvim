-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Custom default tab options
vim.opt.colorcolumn = '120'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- List configs
-- Set trailing spaces to '~', tabs to '|' and nbsp to '␣'
vim.cmd("set list")
vim.cmd("set listchars=trail:~,tab:\\|\\ ,nbsp:␣")

-- For Obsidian
vim.o.conceallevel=1

-- Set linebreak makes the text wrap whole words when the line space on the screen
-- is too small for the line, instead of only the remaining characters
vim.cmd("set linebreak")
