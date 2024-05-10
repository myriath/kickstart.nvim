vim.keymap.set('n', '[b', '<cmd>bp<CR>')
vim.keymap.set('n', ']b', '<cmd>bn<CR>')

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers['signature_help'], {
  border = 'single',
  close_events = { 'CursorMoved', 'BufHidden' },
})
vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help)

vim.keymap.set('n', '<leader>pv', '<cmd>Neotree position=current<CR>')

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
