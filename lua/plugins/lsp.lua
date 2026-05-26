return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('user_lsp_keymaps', { clear = true }),
        callback = function(event)
          local map = function(lhs, rhs, desc)
            vim.keymap.set('n', lhs, rhs, { buffer = event.buf, desc = desc })
          end
          map('<leader>cf', vim.lsp.buf.format, 'Format buffer')
          map('<leader>ca', vim.lsp.buf.code_action, 'Code action')
          map('gd', vim.lsp.buf.definition, 'Go to definition')
          map('gD', vim.lsp.buf.declaration, 'Go to declaration')
          map('gI', vim.lsp.buf.implementation, 'Go to implementation')
          map('gy', vim.lsp.buf.type_definition, 'Go to type definition')
          map('gr', vim.lsp.buf.references, 'List references')
        end,
      })
    end,
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
