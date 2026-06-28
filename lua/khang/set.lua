-- colorscheme is applied in lua/khang/lazy/kanagawa_theme.lua (after the plugin loads)

vim.opt.clipboard = 'unnamedplus' -- use system keyboard for yank
 
vim.opt.nu = true                 -- set line numbers -- set line numbers
vim.opt.relativenumber = true     -- use relative line numbers
 
-- set tab size to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
 
vim.opt.wrap = true       -- wrap long lines
vim.opt.linebreak = true  -- wrap at word boundaries, not mid-word
vim.opt.breakindent = true -- keep wrapped lines visually indented
 
vim.opt.incsearch = true -- incremental search
 
vim.opt.termguicolors = true

