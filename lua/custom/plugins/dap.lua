vim.pack.add {
  'https://github.com/mfussenegger/nvim-dap',
  'https://github.com/leoluz/nvim-dap-go',
  'https://github.com/nvim-neotest/nvim-nio',
  'https://github.com/theHamsta/nvim-dap-virtual-text',
}

require('dap-go').setup()
require('nvim-dap-virtual-text').setup()

local dap = require 'dap'
vim.keymap.set('n', '<leader>db', function() dap.toggle_breakpoint() end, {})
vim.keymap.set('n', '<leader>dc', function() dap.continue() end, {})
