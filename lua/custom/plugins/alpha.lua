-- Startup screen
return {
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
}
