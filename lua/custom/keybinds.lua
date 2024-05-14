-- Buffer keybinds
vim.keymap.set('n', '[b', '<cmd>bp<CR>', { desc = 'Previous [b]uffer' })
vim.keymap.set('n', ']b', '<cmd>bn<CR>', { desc = 'Next [b]uffer' })

-- Neotree keybinds
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers['signature_help'], {
  border = 'single',
  close_events = { 'CursorMoved', 'BufHidden' },
})
vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help, { desc = 'Show function signature' })
vim.keymap.set('n', '<leader>pv', '<cmd>Neotree position=current<CR>', { desc = '[P]roject [V]iew' })

-- Terminal keybinds
vim.keymap.set('n', '<leader>ot', '<cmd>FloatermNew<CR>', { desc = '[O]pen [t]erminal' })
vim.keymap.set('n', '<C-\\>', '<cmd>FloatermToggle<CR>', { desc = 'Toggle terminal' })

-- Default tabstops
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-- Automatically open NeoTree
-- vim.api.nvim_create_augroup('neotree_autoopen', { clear = true })
-- vim.api.nvim_create_autocmd('BufWinEnter', {
--   desc = 'Open neo-tree on enter',
--   group = 'neotree_autoopen',
--   callback = function()
--     if not vim.g.neotree_opened then
--       vim.cmd 'Neotree show'
--       vim.g.neotree_opened = true
--     end
--   end,
-- })

return {}
