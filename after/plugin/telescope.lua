local actions = require('telescope.actions')
local wk = require("which-key")
local builtin = require('telescope.builtin')

require('telescope').setup {
    defaults = {
        file_sorter      = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix    = ' >',
        color_devicons   = true,
        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
        mappings         = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        }
    },
}

wk.register({
    ["<leader>s"] = {
        name = "Search",
        f = { function() builtin.find_files() end, "Find All Files" },
        m = { function() builtin.marks() end, "Marks" },
        s = { function() builtin.grep_string() end, "Grep String" },
        l = { function() builtin.live_grep() end, "Live Grep" },
        b = { function() builtin.buffers() end, "Buffers " },
        g = { function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, "Grep" }
    }
})

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
