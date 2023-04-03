
local wk = require("which-key")
local builtin = require('telescope.builtin')

wk.register({
  {
    f = {function() builtin.find_files() end , "Find All Files" },
    h = {function() 
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
     end , "Grep" }
  },
  {
    prefix = "<leader>f",
    mode = "n",
    silent = true,
    noremap = true
  }
})


-- TODO: add this to which-key
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
