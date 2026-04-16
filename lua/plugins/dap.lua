local dap = require('dap')
require('mason-nvim-dap').setup()

local sign = vim.fn.sign_define
sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
sign(
  "DapBreakpointCondition",
  { text = "●", texthl = "DapBreakpointCondition", linehl = "", numhl = "" }
)
sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = "" })
sign("DapStopped", { text = "󰼛", texthl = "DapStopped", linehl = "DapStopped", numhl = "DapStopped" })

dap.adapters.codelldb = {
  type = 'server',
  port = '${port}',
  executable = {
    command = vim.fn.stdpath('data') .. '/mason/bin/codelldb',
    args = { '--port', '${port}' },
  },
}

-- NOTE: if using the default codelldb, the program needs to be compiled with the LLVM backend
dap.configurations.zig = {
  {
    name = 'Launch',
    type = 'codelldb',
    request = 'launch',
    program = '${workspaceFolder}/zig-out/bin/${workspaceFolderBasename}',
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = function()
      return vim.split(vim.fn.input('Args: '), ' +', { trimempty = true })
    end,
  }
}
