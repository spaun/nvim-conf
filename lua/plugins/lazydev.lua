return {
  'folke/lazydev.nvim',
  ft = 'lua',
  opts = {
    library = {
      'nvim-dap-ui',
      { path = 'snacks.nvim', words = { 'Snacks' } },
    },
  },
}
