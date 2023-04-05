require("arrudaricardo.set")
require("arrudaricardo.remap")
require("arrudaricardo.lazy")


-- Yank highlight
local augroup = vim.api.nvim_create_augroup
local ArrudaRicardoGroup = augroup('ArrudaRicardo', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

