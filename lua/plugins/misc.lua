-- Hex editor
require 'hex'.setup()

-- Indent blankline
require('ibl').setup({
  exclude = {
    filetypes = {
      'git',
      'fugitive',
    }
  }
})
