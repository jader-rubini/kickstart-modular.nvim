-- undotree
-- https://github.com/mbbill/undotree

return {
  'mbbill/undotree',
  config = function()
    -- Display short timestamps and auto-focus when open
    vim.g.undotree_ShortIndicators = 1
    vim.g.undotree_SetFocusWhenToggle = 1

    -- Set custom keymap
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle undotree view' })
  end,
}
