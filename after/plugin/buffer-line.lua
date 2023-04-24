local bufferline = require("bufferline")

bufferline.setup {}

vim.keymap.set('n', '<leader>bb', "<CMD>BufferLineTogglePin<CR>", { noremap = true, silent = true, desc = 'Pin Buffer'})
vim.keymap.set('n', '<leader>bc', "bw", { noremap = true, silent = true, desc = 'Close Buffer'})
vim.keymap.set('n', '<leader>bf', "<CMD>BufferLinePick<CR>", { noremap = true, silent = true, desc = 'Pick Buffer'})
vim.keymap.set('n', '<leader>bl', "<CMD>BufferLineMoveNext<CR>", { noremap = true, silent = true, desc = 'Move Next Buffer'})
vim.keymap.set('n', '<leader>bh', "<CMD>BufferLineMovePrev<CR>", { noremap = true, silent = true, desc = 'Move Prev Buffer'})
vim.keymap.set('n', '<leader>bL', "<CMD>BufferLineCloseRight<CR>", { noremap = true, silent = true, desc = 'Close Right Buffer'})
vim.keymap.set('n', '<leader>bH', "<CMD>BufferLineCloseLeft<CR>", { noremap = true, silent = true, desc = 'Close Left Buffer'})
