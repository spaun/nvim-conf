return {
  'stevearc/conform.nvim',
  event = 'BufWritePre',

  keys = {
    {
      '<leader>=',
      function()
        require('conform').format({ async = true })
      end,
      mode = { 'n', 'v' },
      desc = 'Format buffer or selection',
    },
  },
  opts = {
    formatters_by_ft = {
      php = { 'php_cs_fixer' },
      python = { 'ruff_organize_imports', 'ruff_format' },
    },
    format_on_save = {
      timeout_ms = 5000,
      lsp_format = 'fallback',
    },
  },
}
