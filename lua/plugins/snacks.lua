return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    lazygit = { enabled = true },
    notifier = { enabled = true },
    picker = {
      enabled = true,
      sources = {
        explorer = {
          layout = {
            hidden = { 'input' },
          },
        },
      },
    },
    quickfile = { enabled = true },
  },
  -- stylua: ignore start
  keys = {
    -- Pickers
    { '<leader><space>', function() Snacks.picker.files() end,              desc = 'Files' },
    { '<leader>,',       function() Snacks.picker.buffers() end,            desc = 'Buffers' },
    { '<leader>/',       function() Snacks.picker.grep() end,               desc = 'Grep' },
    { '<leader>:',       function() Snacks.picker.command_history() end,    desc = 'Command History' },
    { '<leader>n',       function() Snacks.picker.notifications() end,      desc = 'Notification History' },
    { '<leader>e',       function() Snacks.explorer() end,                  desc = 'File Explorer' },
    -- Git
    { '<leader>gg',      function() Snacks.lazygit() end,                   desc = 'Lazygit' },
    -- Search
    { '<leader>sl',      function() Snacks.picker.lines() end,              desc = 'Buffer Lines' },
    { '<leader>sL',      function() Snacks.picker.grep_buffers() end,       desc = 'Grep Open Buffers' },
    { '<leader>sD',      function() Snacks.picker.diagnostics() end,        desc = 'Diagnostics' },
    { '<leader>sd',      function() Snacks.picker.diagnostics_buffer() end, desc = 'Buffer Diagnostics' },
  },
  -- stylua: ignore end
}
