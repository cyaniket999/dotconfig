-- Enable relative and absolute line numbers
vim.opt.number = true          -- Show absolute line number on the current line
vim.opt.relativenumber = true  -- Show relative line numbers for easy jumping

vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Enable system-wide clipboard integration (unnamedplus)
vim.opt.clipboard = "unnamedplus"
-- Tab and Indentation Settings
vim.opt.tabstop = 4       -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4    -- Number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 4   -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.expandtab = true  -- Convert tabs to spaces (recommended for clean code formatting)
vim.opt.smartindent = true -- Enable smart auto-indenting when starting a new line
