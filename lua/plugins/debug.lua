return {
  'rcarriga/nvim-dap-ui',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'folke/lazydev.nvim',
    'mfussenegger/nvim-dap',
    'leoluz/nvim-dap-go',
  },
  keys = {
    { '<leader>dt', ':DapToggleBreakpoint<CR>', desc = 'Toggle breakpoint' },
    { '<leader>dc', ':DapContinue<CR>', desc = 'DAP continue' },
  },
  config = function()
    require('dap-go').setup()

    local dap, dapui = require('dap'), require('dapui')

    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  end,
}
