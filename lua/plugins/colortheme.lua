return {
  {
    'catppuccin/nvim',
    lazy = false,
    name = 'catppuccin',
    priority = 1000,
    opts = {
      auto_integrations = true,
    },
    config = function()
      vim.cmd.colorscheme('catppuccin')
    end,
  },
}
