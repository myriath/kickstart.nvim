-- Floating terminal window
return {
  'voldikss/vim-floaterm',
  config = function()
    -- Add lazygit in floating window
    vim.keymap.set('n', '<leader>og', '<cmd>FloatermNew lazygit<CR>', { desc = '[O]pen lazy[g]it' })
    vim.g.floaterm_width = 0.9
    vim.g.floaterm_height = 0.9
  end,
}
