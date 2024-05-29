------------------------
--      Options
------------------------
local opt = vim.opt
local g = vim.g

-- general
opt.clipboard = "unnamedplus"
opt.number = true
opt.numberwidth = 2
opt.signcolumn = "yes"

-- tabs
opt.tabstop = 4        -- 1 tab represented as 4 spaces
opt.expandtab = true   -- <tab> key will create " " insead of "\t"
opt.shiftwidth = 4     -- indent change after backspace and >> <<
opt.softtabstop = 4    -- number of spaces instead of tab 
opt.smartindent = true -- auto indent

-- plugins
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
