return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  command = 'Telescope',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
  },
  keys = {
    { '<leader>ff', '<Cmd>Telescope find_files<CR>', desc = 'Telescope find files' },
    { '<leader>fg', '<Cmd>Telescope live_grep<CR>', desc = 'Telescope live grep' },
    { '<leader>fb', '<Cmd>Telescope buffers<CR>', desc = 'Telescope buffers' },
  },
  opts = {
  },
}
