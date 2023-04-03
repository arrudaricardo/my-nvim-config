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
