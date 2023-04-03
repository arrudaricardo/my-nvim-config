require("arrudaricardo.lazy")
require("arrudaricardo.set")
require("arrudaricardo.remap")

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

autocmd({ "BufWritePre" }, {
    group = ArrudaRicardoGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

