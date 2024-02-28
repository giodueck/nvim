-- This is necessary for VimTeX to load properly. The "indent" is optional.
-- Note that most plugin managers will do this automatically.
-- vim.cmd("filetype plugin indent on")

vim.cmd("syntax enable")

vim.cmd("let g:vimtex_view_method = 'zathura'")
vim.cmd("let g:vimtex_fold_enabled = 0")
vim.cmd("let g:vimtex_indent_enabled = 1")
vim.cmd("let g:vimtex_complete_recursive_bib = 0")
vim.cmd("let g:vimtex_complete_close_braces = 1")
vim.cmd("let g:vimtex_quickfix_mode = 2")
vim.cmd("let g:vimtex_quickfix_open_on_warning = 1")

