return {
  'stevearc/oil.nvim',
  opts = {},
  config = function()
    require('oil').setup {
      default_file_explorer = true,
      columns = {
        'icon',
        --        'permissions',
        --        'size',
        --        'mtime',
      },
      keymaps = {
        ['?'] = 'actions.show_help',
        ['<leader><C-s>'] = 'actions.select_split',
        ['<leader><C-v>'] = 'actions.select_vsplit',
        ['<C-l>'] = false,
        ['<C-h>'] = false,
      },
      constrain_cursor = 'name',
    }

    -- Open parent directory in current window
    vim.keymap.set('n', '-', '<cmd>Oil<CR>', { desc = 'Open parent directory' })
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
