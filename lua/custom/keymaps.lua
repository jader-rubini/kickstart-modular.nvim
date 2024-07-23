print 'hello from custom keymaps'

-- While in insert mode, typing `jj` will take you back to normal mode.
vim.keymap.set('i', 'jj', '<Esc>')
