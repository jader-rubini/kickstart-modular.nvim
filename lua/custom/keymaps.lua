-- Just an alias
local map = vim.keymap.set

-- Exit insert mode with jj
map('i', 'jj', '<Esc>', { desc = 'Exit insert mode with jj' })

-- Map `U` to redo
map('n', 'U', '<C-r>', { noremap = true, desc = 'Redo last udone action' })

-- Insert empty line ab[O]ve or bel[o]w and remain in normal mode.
map('n', '<leader>O', 'm`O<Esc>``', { desc = 'Add new empty line above' })
map('n', '<leader>o', 'm`o<Esc>``', { desc = 'Add new empty line below' })

-- Move lines up or down
map('n', '<A-k>', '<cmd>m .-2<CR>==', { desc = 'Move current line up' })
map('n', '<A-j>', '<cmd>m .+1<CR>==', { desc = 'Move current line down' })
map('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
map('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })

-- Increment/decrement number under cursor
map('n', '<C-=>', '<C-a>', { desc = 'Increment number' })
map('n', '<C-->', '<C-x>', { desc = 'Decrement number' })

-- Window management
map('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
map('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' })
map('n', '<leader>s=', '<C-w>=', { desc = 'Make splits equal size' })
map('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })

-- Tab management
map('n', '<leader><tab>n', '<cmd>tabnew<CR>', { desc = 'New empty tab' })
map('n', '<leader><tab>c', '<cmd>tabclose<CR>', { desc = 'Close current tab' })
map('n', '<leader><tab>h', '<cmd>tabp<CR>', { desc = 'Go to previous tab' })
map('n', '<leader><tab>l', '<cmd>tabn<CR>', { desc = 'Go to next tab' })
map('n', '<leader><tab>d', '<cmd>tabnew %<CR>', { desc = 'New tab with current buffer' })

-- Telescope custom bindings
local builtin = require 'telescope.builtin'
map('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })
-- map('i', '<C-h>', vim.lsp.buf.signature_help, { desc = 'Show function signature help' })
