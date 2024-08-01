-- Set netrw file explorer to tree view mode
vim.cmd 'let g:netrw_liststyle = 3'

-- Just an alias
local opt = vim.opt

-- Show line numbers relative to current line
opt.relativenumber = true

-- Disable line wrapping
opt.wrap = false

-- Indent with tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Don't display whitespace characters
opt.list = false

-- Sweet sweet transparent backgrounds
-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
