local actions = require('telescope.actions')
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
                ["<C-q>"] = actions.send_to_qflist,
                ["<esc>"] = actions.close,
            },
        }
    },
}

vim.keymap.set('n', '<C-p>', builtin.git_files, { noremap = true, silent = true, desc = 'Find Git Files'})
vim.keymap.set('n', '<leader>sf', builtin.find_files, { noremap = true, silent = true, desc = 'Find All Files'})
vim.keymap.set('n', '<leader>ss', builtin.grep_string, { noremap = true, silent = true, desc = 'Grep String'})
vim.keymap.set('n', '<leader>sl', builtin.live_grep, { noremap = true, silent = true, desc = 'Live Grep'})
vim.keymap.set('n', '<leader>sb', builtin.live_grep, { noremap = true, silent = true, desc = 'Buffers'})
