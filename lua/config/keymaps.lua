-- Move to window using the <C-hjkl> keys
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Switch to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Switch to lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Switch to upper window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Switch to right window' })

-- Quickfix list
vim.keymap.set('n', '[q', vim.cmd.cprev, { desc = 'Previous quickfix item' })
vim.keymap.set('n', ']q', vim.cmd.cnext, { desc = 'Next quickfix item' })

-- Diagnostics
vim.keymap.set('n', '[d', function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = 'Go to prev diagnostic message' })
vim.keymap.set('n', ']d', function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setqflist, { desc = 'Open diagnostic quickfix list' })
