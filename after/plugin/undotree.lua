local wk = require("which-key")

wk.register({
  {
      ["<leader>u]"] = { function() vim.cmd.UndotreeToggle() end, "Undo Tree" }
  },
})


