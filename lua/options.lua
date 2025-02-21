-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
vim.o.clipboard = 'unnamedplus'

-- Enable OSC-52 support when connected via SSH or inside tmux
if os.getenv('SSH_CONNECTION') or os.getenv('TMUX') then
  vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
      ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
      ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
      ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
      ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
    },
  }
end

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
vim.o.colorcolumn = '120'
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- List configs
-- Set whitespace and invisible chars
vim.o.list = true
vim.cmd("set listchars=trail:~,tab:┊\\ ,eol:↵,nbsp:␣")

-- Set linebreak makes the text wrap whole words when the line space on the screen
-- is too small for the line, instead of only the remaining characters
vim.o.linebreak = true

-- Don't redraw screen while in the middle of executing a keymap
vim.o.lazyredraw = true

-- Keep 2 lines between the cursor and the bottom and top of the window, to get some
-- context around the cursor
vim.o.scrolloff = 2
