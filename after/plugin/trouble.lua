local wk = require("which-key")

wk.register({
  {
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", "Toggle quickfix" }
  },
})
