-- Set netrw file explorer to tree view mode
vim.cmd 'let g:netrw_liststyle = 3'

-- Just an alias
local opt = vim.opt

-- Show line numbers relative to current line
opt.relativenumber = true

-- Indent with tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.smartindent = true

-- Don't display whitespace character
opt.list = false
