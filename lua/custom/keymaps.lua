print 'hello from custom keymaps'

-- While in insert mode, typing `jj` will take you back to normal mode.
vim.keymap.set('i', 'jj', '<Esc>')

-- Map `U` to redo
vim.keymap.set('n', 'U', '<C-r>', { noremap = true })

-- Insert empty line ab[O]ve or bel[o]w and remain in normal mode.
vim.keymap.set('n', '<leader>O', 'm`O<Esc>``', { desc = 'Add new empty line above' })
vim.keymap.set('n', '<leader>o', 'm`o<Esc>``', { desc = 'Add new empty line below' })

-- Move lines up or down
vim.keymap.set('n', '<C-k>', '<cmd>m .-2<CR>==', { desc = 'Move current line up' })
vim.keymap.set('n', '<C-j>', '<cmd>m .+1<CR>==', { desc = 'Move current line down' })
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
