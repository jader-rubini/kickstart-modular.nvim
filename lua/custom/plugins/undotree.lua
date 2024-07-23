-- undotree
-- https://github.com/mbbill/undotree

return {
  'mbbill/undotree',
  opts = {
    undotree_SetFocusWhenToggle = 1,
  },
  config = function()
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle undotree view' })
  end,
}
