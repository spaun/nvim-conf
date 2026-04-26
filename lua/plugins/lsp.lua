return {
  {
    'neovim/nvim-lspconfig',
    keys = {
      { '<leader>cf', vim.lsp.buf.format, desc = 'Format buffer' },
      { '<leader>ca', vim.lsp.buf.code_action, desc = 'Code action' },
      { 'gd', vim.lsp.buf.definition, desc = 'Go to definition' },
      { 'gD', vim.lsp.buf.declaration, desc = 'Go to declaration' },
      { 'gI', vim.lsp.buf.implementation, desc = 'Go to implementation' },
      { 'gy', vim.lsp.buf.type_definition, desc = 'Go to type definition' },
      { 'gr', vim.lsp.buf.references, desc = 'List references' },
    },
  },
  {
    'mason-org/mason.nvim',
    config = true,
  },
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      ensure_installed = { 'gopls', 'intelephense', 'lua_ls', 'stylua' },
      automatic_enable = true,
    },
    dependencies = {
      'neovim/nvim-lspconfig',
      'mason-org/mason.nvim',
    },
  },
}
