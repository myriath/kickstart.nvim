-- Floating terminal window
return {
  'voldikss/vim-floaterm',
  config = function()
    -- Add lazygit in floating window
    vim.keymap.set('n', '<leader>og', '<cmd>FloatermNew lazygit<CR>', { desc = '[O]pen lazy[g]it' })
  end,
}
