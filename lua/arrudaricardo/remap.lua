vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Q", "<nop>", { desc = "Nop" })

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it Rain" });
vim.keymap.set("n", "<leader>mg", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "Meke it Game of Life" });

vim.keymap.set("n", "H", "<cmd>BufferLineCyclePrev<CR>", { desc = "Cycle Previous Buffer" })
vim.keymap.set("n", "L", "<cmd>BufferLineCycleNext<CR>", { desc = "Cycle Next Buffer" })

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save File" })
vim.keymap.set("n", "<leader>W", "<cmd>wa<cr>", { desc = "Save All Files" })
vim.keymap.set("n", "<leader>c", "<cmd>bw<cr>", { desc = "Close Buffer" })

vim.keymap.set("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", { desc = "Format" })

vim.keymap.set("n", "<C-H>", "<C-W>h", { desc = "Move to window left" })
vim.keymap.set("n", "<C-J>", "<C-W>j", { desc = "Move to window below" })
vim.keymap.set("n", "<C-K>", "<C-W>k", { desc = "Move to window above" })
vim.keymap.set("n", "<C-L>", "<C-W>l", { desc = "Move to window right" })
