-- Session manager for Alpha
return {
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
}
