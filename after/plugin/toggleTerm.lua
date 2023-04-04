local Terminal = require('toggleterm.terminal').Terminal

local lazygit  = Terminal:new({
    cmd = "lazygit", dir = "git_dir",
    hidden = true,
    direction = "float",
    float_opts = {
        border = "none",
    },
    -- function to run on opening the terminal
    on_open = function(term)
        vim.cmd("startinsert!")
        -- vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
    end,
    -- function to run on closing the terminal
    on_close = function(term)
        vim.cmd("startinsert!")
    end,
    count = 99
})

function _lazygit_toggle()
    lazygit:toggle()
end


vim.keymap.set('n', '<leader>gg', _lazygit_toggle, { noremap = true, silent = true, desc = 'Toggle Lazygit' })

--

function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://*toggleterm#1 lua set_terminal_keymaps()')

--
vim.keymap.set('n', "<c-\\>", [[<Cmd>:ToggleTerm<CR>]], { noremap = true, silent = true })
vim.keymap.set('t', "<c-\\>", [[<Cmd>:ToggleTerm<CR>]], { noremap = true, silent = true })
