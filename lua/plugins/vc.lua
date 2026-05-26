return {
  'kdheepak/lazygit.nvim',
  cmd = 'LazyGit',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>gg', '<Cmd>LazyGit<CR>', desc = 'LazyGit' },
  },
}
