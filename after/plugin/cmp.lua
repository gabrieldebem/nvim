require('cmp').setup({
    sources = {
        { name = "copilot", group_index = 2 },
        { name = "path",    group_index = 2 },
        { name = 'nvim_lsp' },
        {
            name = 'luasnip',
            option = {
                use_show_condition = false,
                show_autosnippets = true
            }
        },
    },
    {
        { name = 'buffer' },
    }
})
