local wk = require("which-key")

require('overseer').setup {}

wk.register({
    ["<leader>o"] = {
        name = "Overseer",
        o = { "<cmd>:OverseerToggle<cr>", "Toggle" },
        r = { "<cmd>:OverseerRun<cr>", "Run" },
        b = { "<cmd>:OverseerBuild<cr>", "Build" },
    },
})

vim.keymap.set('n', '<leader>oo', "<cmd>:OverseerToggle<cr>",{ noremap = true, silent = true, desc = 'Overseer Toggle'})
vim.keymap.set('n', '<leader>or', "<cmd>:OverseerRun<cr>",{ noremap = true, silent = true, desc = 'Overseer Run'})
vim.keymap.set('n', '<leader>ob', "<cmd>:OverseerBuild<cr>",{ noremap = true, silent = true, desc = 'Overseer Build'})
