require('aerial').setup({
    layout = {
        max_width = { 40, 0.2 },
        width = nil,
        min_width = 40,
        win_opts = {},
        default_direction = "left",
        placement = "window",
        preserve_equality = false,
    },
    on_attach = function(bufnr)
        vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
        vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
    end
})
