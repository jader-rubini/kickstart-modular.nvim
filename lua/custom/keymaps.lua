-- Just an alias
local keymap = vim.keymap

-- Exit insert mode with jj
keymap.set('i', 'jj', '<Esc>', { desc = 'Exit insert mode with jj' })

-- Map `U` to redo
keymap.set('n', 'U', '<C-r>', { noremap = true, desc = 'Redo last udone action' })

-- Insert empty line ab[O]ve or bel[o]w and remain in normal mode.
keymap.set('n', '<leader>O', 'm`O<Esc>``', { desc = 'Add new empty line above' })
keymap.set('n', '<leader>o', 'm`o<Esc>``', { desc = 'Add new empty line below' })

-- Move lines up or down
keymap.set('n', '<A-k>', '<cmd>m .-2<CR>==', { desc = 'Move current line up' })
keymap.set('n', '<A-j>', '<cmd>m .+1<CR>==', { desc = 'Move current line down' })
keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })

-- Increment/decrement number under cursor
keymap.set('n', '<C-=>', '<C-a>', { desc = 'Increment number' })
keymap.set('n', '<C-->', '<C-x>', { desc = 'Decrement number' })

-- Window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' })
keymap.set('n', '<leader>s=', '<C-w>=', { desc = 'Make splits equal size' })
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })

-- Tab management
keymap.set('n', '<leader><tab>n', '<cmd>tabnew<CR>', { desc = 'New empty tab' })
keymap.set('n', '<leader><tab>c', '<cmd>tabclose<CR>', { desc = 'Close current tab' })
keymap.set('n', '<leader><tab>h', '<cmd>tabp<CR>', { desc = 'Go to previous tab' })
keymap.set('n', '<leader><tab>l', '<cmd>tabn<CR>', { desc = 'Go to next tab' })
keymap.set('n', '<leader><tab>d', '<cmd>tabnew %<CR>', { desc = 'New tab with current buffer' })
