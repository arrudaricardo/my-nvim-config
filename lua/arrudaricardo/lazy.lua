local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    {
        "windwp/nvim-autopairs", config = true
    },
    -- Use treesitter to auto close and auto rename html tag
    {
        "windwp/nvim-ts-autotag", config = true
    },

    {
        'akinsho/bufferline.nvim',
        version = "v3.*",
        dependencies = 'nvim-tree/nvim-web-devicons',
    },

    -- ?? Not working
    {
        'nyngwang/murmur.lua', event = "BufReadPost",
    },

    {
        'pwntester/octo.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            { 'kyazdani42/nvim-web-devicons', name = 'kyazdani42-nvim-web-devicons' }
        },
        config = function()
            require "octo".setup()
        end
    },

    {
        'lewis6991/gitsigns.nvim',
    },

    {
        'sQVe/sort.nvim',
        config = true
    },

    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
    },

    {
        'Mofiqul/dracula.nvim',
        config = function()
            vim.cmd('colorscheme dracula')
        end
    },

    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    },

    {
        'numToStr/Comment.nvim',
        config = true,
    },


    { 'akinsho/toggleterm.nvim', version = "*", config = true },

    -- A task runner and job management plugin for Neovim
    { 'stevearc/overseer.nvim',  config = true },


    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },


    -- A pretty diagnostics, references, telescope results,
    -- quickfix and location list to help you solve all the trouble your code is causing.
    {
        "folke/trouble.nvim",
    },

    {
        "folke/which-key.nvim",
        config = true,
    },

    { "nvim-tree/nvim-web-devicons" },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            {
                -- only needed if you want to use the commands with "_with_window_picker" suffix
                's1n7ax/nvim-window-picker',
                --tag = "v1.*",
                config = function()
                    require 'window-picker'.setup({
                        autoselect_one = true,
                        include_current = false,
                        filter_rules = {
                            -- filter using buffer options
                            bo = {
                                -- if the file type is one of following, the window will be ignored
                                filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                                -- if the buffer type is one of following, the window will be ignored
                                buftype = { 'terminal', "quickfix" },
                            },
                        },
                        other_win_hl_color = '#e35e4f',
                    })
                end,
            }
        },
        lazy = false,
    },

    { "nvim-treesitter/nvim-treesitter",        run = ":TSUpdate" },
    { "nvim-treesitter/playground" },
    { "nvim-treesitter/nvim-treesitter-context" },

    { "theprimeagen/harpoon" },

    { "mbbill/undotree" },

    -- A Git wrapper
    { "tpope/vim-fugitive" },

    {
        'VonHeikemen/lsp-zero.nvim',
        lazy = false,
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' },


            -- Autocompletion
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',

            --     -- Snippets
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',
        },
    },

    { "folke/zen-mode.nvim" },
    { "github/copilot.vim" },
    { "eandrju/cellular-automaton.nvim" },

})
