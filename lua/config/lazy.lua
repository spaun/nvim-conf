-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require('lazy').setup({
  pkg = {
    enabled = true,
    cache = vim.fn.stdpath('state') .. '/lazy/pkg-cache.lua',
    -- the first package source that is found for a plugin will be used.
    sources = {
      'lazy',
      'rockspec', -- will only be used when rocks.enabled is true
      'packspec',
    },
  },
  rocks = {
    enabled = true,
    root = vim.fn.stdpath('data') .. '/lazy-rocks',
    server = 'https://lumen-oss.github.io/rocks-binaries/',
    -- use hererocks to install luarocks?
    -- set to `nil` to use hererocks when luarocks is not found
    -- set to `true` to always use hererocks
    -- set to `false` to always use luarocks
    hererocks = true,
  },
  spec = {
    -- import your plugins
    { import = 'plugins' },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { 'catpuccin', 'habamax' } },
  -- automatically check for plugin updates
  checker = { enabled = true },
  change_detection = { enabled = false },
})
