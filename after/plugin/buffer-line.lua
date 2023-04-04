local bufferline = require("bufferline")

bufferline.setup {}

vim.keymap.set('n', '<leader>bb', "<cmd>BufferLineTogglePin<cr>", { noremap = true, silent = true, desc = 'Pin Buffer'})
vim.keymap.set('n', '<leader>bc', "bw", { noremap = true, silent = true, desc = 'Close Buffer'})
vim.keymap.set('n', '<leader>bf', "<cmd>BufferLinePick<cr>", { noremap = true, silent = true, desc = 'Pick Buffer'})
vim.keymap.set('n', '<leader>bl', "<cmd>BufferLineMoveNext<cr>", { noremap = true, silent = true, desc = 'Move Next Buffer'})
vim.keymap.set('n', '<leader>bh', "<cmd>BufferLineMovePrev<cr>", { noremap = true, silent = true, desc = 'Move Prev Buffer'})
vim.keymap.set('n', '<leader>bL', "<cmd>BufferLineCloseRightcr>", { noremap = true, silent = true, desc = 'Close Right Buffer'})
vim.keymap.set('n', '<leader>bH', "<cmd>BufferLineCloseLeft>", { noremap = true, silent = true, desc = 'Close Left Buffer'})
