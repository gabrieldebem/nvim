require('lualine').setup {
    options = {
        theme = 'auto',
        icons_enabled = true,
        disabled_filetypes = {
            'NvimTree',
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { 'filename', 'lsp_progress' },
            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
        },
    },
}
