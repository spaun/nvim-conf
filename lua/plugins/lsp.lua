return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('user_lsp_keymaps', { clear = true }),
        callback = function(event)
          local client = vim.lsp.get_client_by_id(event.data.client_id)

          if client and client:supports_method('textDocument/completion') then
            vim.bo[event.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
            vim.lsp.completion.enable(true, client.id, event.buf)
          end

          local function map(lhs, rhs, desc)
            vim.keymap.set('n', lhs, rhs, {
              buffer = event.buf,
              desc = desc,
            })
          end

          map('gd', vim.lsp.buf.definition, 'Go to definition')
          map('gD', vim.lsp.buf.declaration, 'Go to declaration')
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
    dependencies = {
      'neovim/nvim-lspconfig',
      'mason-org/mason.nvim',
    },
    opts = {
      ensure_installed = {
        'gopls',
        'lua_ls',
        'phpactor',
        'ruff',
        'ty',
      },
      automatic_enable = true,
    },
  },

  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = {
      'mason-org/mason.nvim',
    },
    opts = {
      ensure_installed = {
        'php-cs-fixer',
        'phpstan',
        'stylua',
      },
    },
  },
}
