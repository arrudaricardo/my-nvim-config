local wk = require("which-key")

wk.register({
  {
    xq = { function() vim.cmd.UndotreeToggle() end, "Undo Tree" }
  },
  {
    prefix = "<leader>u",
    mode = "n",
    silent = true,
    noremap = true
  }
})


