require('github-theme').setup({
    options = {
        compile_path = vim.fn.stdpath('cache') .. '/github-theme',
        compile_file_suffix = '_compiled',
        hide_end_of_buffer = true,
        hide_nc_statusline = true,
        transparent = true,
        terminal_colors = true,
        dim_inactive = true,
        module_default = true,
        styles = {
            comments = 'italic',
            functions = 'italic,bold',
            keywords = 'italic,bold',
            variables = 'bold',
            conditionals = 'NONE',
            constants = 'bold',
            numbers = 'NONE',
            operators = 'NONE',
            strings = 'italic',
            types = 'NONE',
        },
        inverse = {
            match_paren = false,
            visual = false,
            search = false,
        },
        darken = {
            floats = true,
            sidebars = {
                enable = true,
                list = {},
            },
        },
        modules = {
            indent_blankline = {
                enabled = false,
                colored_indent_levels = true,
            },
        },
    },
    palettes = {},
    specs = {},
    groups = {},
})

vim.cmd('colorscheme github_light')
