-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Bufferline
-- Move to previous/next buffer
vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Prev buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })

-- Move buffer left/right
vim.keymap.set('n', '<A-h>', '<cmd>BufferLineMovePrev<CR>', { desc = 'Move buffer left' })
vim.keymap.set('n', '<A-l>', '<cmd>BufferLineMoveNext<CR>', { desc = 'Move buffer right' })

-- Close buffer
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>', { desc = 'Close buffer' })

-- Pick buffer
vim.keymap.set('n', '<leader>bp', '<cmd>BufferLinePick<CR>', { desc = 'Pick buffer' })

-- Sort buffers
vim.keymap.set('n', '<leader>bs', '<cmd>BufferLineSortByDirectory<CR>', { desc = 'Sort buffers by dir' })
