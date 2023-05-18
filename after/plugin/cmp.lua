local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    view = {
        entries = { name = 'custom', selection_order = 'near_cursor' } -- can be "custom", "wildmenu" or "native"
    },
    snippet = {
        expand =
            function(args)
                require('luasnip').lsp_expand(args.body)
            end
    },

    sources = {
        -- Copilot Source
        { name = "copilot", group_index = 2 },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "path" },
        { name = "buffer",  keyword_length = 3 },
        { name = "luasnip", keyword_length = 2 },
    },

    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<C-Space>"] = cmp.mapping.complete(),
        ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
        ['<S-Tab>'] = nil,
    },
    window = {
        completion = {
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
            col_offset = 0,
            side_padding = 0,
        },
    },

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
            { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
        }, {
            { name = 'buffer' },
        })
    }),
    cmp.setup.filetype('octo', {
        sources = cmp.config.sources({
            { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
        }, {
            { name = 'buffer' },
        })
    })
})

vim.diagnostic.config({
    virtual_text = true
})
