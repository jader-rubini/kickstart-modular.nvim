-- auto-session
-- https://github.com/rmagatti/auto-session

return {
  'rmagatti/auto-session',
  config = function()
    local session = require 'auto-session'

    session.setup {
      auto_restore_enabled = false,
      auto_session_suppress_dirs = {
        '~/',
        '~/dev',
        '~/Downloads',
        '~/Documents',
        '~/Desktop/',
      },
    }

    local keymap = vim.keymap

    keymap.set('n', '<leader>ww', '<cmd>SessionSave<CR>', { desc = 'Save current session' })
    keymap.set('n', '<leader>wr', '<cmd>SessionRestore<CR>', { desc = 'Restore session for current directory' })
  end,
}
