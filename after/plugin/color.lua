-- require('kanagawa').setup({
--   compile = false,
--   undercurl = true,
--   commentStyle = { italic = true },
--   functionStyle = {},
--   keywordStyle = { italic = true },
--   statementStyle = { bold = true },
--   typeStyle = { bold = true },
--   transparent = false,
--   dimInactive = false,
--   terminalColors = false,
--   colors = {
--     palette = {},
--     theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--   },
--   overrides = function(colors)
--     return {}
--   end,
--   theme = "wave",
--   background = {
--     dark = "dragon",
--     light = "lotus"
--   },
-- })

-- -- setup must be called before loading
-- vim.cmd("colorscheme kanagawa")

if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true
end

vim.opt.background = 'dark'

vim.g.everforest_background = 'medium'
vim.g.everforest_better_performance = 1

vim.cmd('colorscheme everforest')
