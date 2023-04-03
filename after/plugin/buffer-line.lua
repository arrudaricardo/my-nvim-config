local wk = require("which-key")
local bufferline = require("bufferline")

bufferline.setup {}

wk.register({
    ["<leader>b"] = {
        name = "Buffer",
        p = { "<cmd>:BufferLineTogglePin<cr>", "Pin" },
        c = { "<cmd>bw<cr>", "Close" },
        f = { "<cmd>:BufferLinePick<cr>", "Find" },
        l = { "<cmd>:BufferLineMoveNext<cr>", "Next" },
        h = { "<cmd>:BufferLineMovePrev<cr>", "Previous" },
        L = { "<cmd>:BufferLineCloseRight<cr>", "Close Right" },
        H = { "<cmd>:BufferLineCloseLeft<cr>", "Close Left" },
    },
})
