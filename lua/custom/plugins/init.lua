-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.keymap.set('n', '[b', '<cmd>bp<CR>')
vim.keymap.set('n', ']b', '<cmd>bn<CR>')

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers['signature_help'], {
  border = 'single',
  close_events = { 'CursorMoved', 'BufHidden' },
})
vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help)

return {
  -- Autoclose brackets / quotes / etc
  -- { 'm4xshen/autoclose.nvim', opts = {} },
  -- Scrollbar with error and warning markers
  { 'petertriho/nvim-scrollbar', opts = {} },

  -- Session manager
  {
    'natecraddock/sessions.nvim',
    config = function()
      require('sessions').setup {
        -- When to save session
        events = { 'VimLeavePre', 'BufAdd' },

        -- Set default session path
        --session_filepath = '~/.local/share/nvim/sessions',
        session_filepath = 'C:\\Users\\mitch\\Documents\\nvim\\.sessions',
        -- Treat session_filepath as absolute path
        absolute = true,
      }
    end,
  },

  {
    'goolord/alpha-nvim',
    config = function()
      local status_ok, alpha = pcall(require, 'alpha')
      if not status_ok then
        return
      end

      local dashboard = require 'alpha.themes.dashboard'
      dashboard.section.header.val = {
        [[          ▀████▀▄▄              ▄█ ]],
        [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
        [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
        [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
        [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
        [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
        [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
        [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
        [[   █   █  █      ▄▄           ▄▀   ]],
      }
      --
      --      dashboard.section.buttons.val = {
      --        dashboard.button('f', '  Find file', ':Telescope find_files <CR>'),
      --        dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      --        dashboard.button('r', '  Recently used files', ':Telescope oldfiles <CR>'),
      --        dashboard.button('t', '  Find text', ':Telescope live_grep <CR>'),
      --        dashboard.button('c', '  Configuration', ':e ~/.config/nvim/init.vim<CR>'),
      --        dashboard.button('q', '  Quit Neovim', ':qa<CR>'),
      --      }
      dashboard.section.buttons.val = {
        dashboard.button('e', '  New file', '<cmd>ene <CR>'),
        dashboard.button('<leader>ff', '󰈞  Find file', '<cmd>Telescope find_files <CR>'),
        dashboard.button('<leader>fr', '󰊄  Recently opened files', ':<cmd>Telescope oldfiles<CR>'),
        --dashboard.button("SPC f r", "  Frecency/MRU"),
        dashboard.button('<leader>fg', '󰈬  Find word', '<cmd>Telescope live_grep<CR>'),
        --dashboard.button("SPC f m", "  Jump to bookmarks"),
        dashboard.button('<leader>sl', '  Open last session', '<cmd>SessionsLoad<CR>'),
        dashboard.button('<leader>q', '  Quit Neovim', '<cmd>qa<CR>'),
        --dashboard.button('c', '  Configuration', ':e ~/.config/nvim/init.vim<CR>'),
        dashboard.button('<leader>c', '  Configuration', ':e ~/AppData/Local/nvim/init.lua<CR>'),
      }

      local function footer()
        return 'giggity'
      end

      dashboard.section.footer.val = footer()

      dashboard.section.footer.opts.hl = 'Type'
      dashboard.section.header.opts.hl = 'Include'
      dashboard.section.buttons.opts.hl = 'Keyword'

      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.opts)
    end,
  },
}
