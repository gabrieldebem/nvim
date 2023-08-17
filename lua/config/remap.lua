vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local nmap = function(keys, func, desc)
    if desc then
        desc = 'LSP: ' .. desc
    end
    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end

vim.keymap.set('n', '<leader><Space>', ':w<cr>')

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
vim.keymap.set('n', '<leader>Q', "<cmd>q<cr>")

nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
nmap('gr', vim.lsp.buf.references, '[G]oto [R]eferences')
nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')

nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
nmap('gs', ":vsplit | lua vim.lsp.buf.definition()<CR>", '[G]oto Definition [S]plited')
nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-W>', { noremap = true })

nmap('<leader>=', function()
    if vim.lsp.buf.format then
        vim.lsp.buf.format()
    elseif vim.lsp.buf.formatting then
        vim.lsp.buf.formatting()
    end
end, 'Format current buffer with LSP')

vim.keymap.set('n', '<leader>s', "<cmd>split<cr>", { desc = "Horizontal [s]plit" })
vim.keymap.set('n', '<leader>sv', "<cmd>vert split<cr>", { desc = "[V]ertical split" })
vim.keymap.set('n', '<leader>sj', "<c-w>w", { desc = "Next window" })
vim.keymap.set('n', '<leader>sk', "<c-w>w", { desc = "Previous windor" })
vim.keymap.set('n', '<leader>ss', "<cmd>Telescope colorscheme<cr>", { desc = "[S]earch [S]tyle" })
vim.keymap.set('n', '<leader>gg', "<cmd>Neogit<cr>", { desc = "[G]o to [G]it" })

vim.keymap.set('n', '<leader>rc', "<cmd>Neotree<cr>")
vim.keymap.set('x', '<leader>p', "\"_dP") 

vim.keymap.set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "\\frun", "<cmd>FlutterRun<cr>")
vim.keymap.set("n", "\\frt", "<cmd>FlutterRestart<cr>")
vim.keymap.set("n", "\\fq", "<cmd>FlutterQuit<cr>")
vim.keymap.set('n', '\\a', '<cmd>AerialToggle!<CR>')
vim.keymap.set('n', '<leader>a', '<cmd>Telescope aerial<CR>')

vim.keymap.set({ 'n', 'x', 'o' }, 's', function() require("flash").jump() end, { desc = "Flash [s]earch" })
vim.keymap.set({ 'n', 'x', 'o' }, 'S', function() require("flash").treesitter() end, { desc = "Flash backward [S]earch" })

vim.opt.shell = '/bin/zsh'
vim.opt_local.iskeyword:append('$')
vim.opt.clipboard = 'unnamedplus,unnamed'

vim.cmd.set('number', 'relativenumber')
vim.keymap.set('i', '<C-W>', '<C-BS>')

vim.keymap.set('n', '<leader>H', '<cmd>nohlsearch<cr>', { desc = 'Clear [H]ighlight' })
vim.keymap.set('n', '<leader>te', '<cmd>TwilightEnable<cr>', { desc = '[T]wighlight[E]nable' })
vim.keymap.set('n', '<leader>td', '<cmd>TwilightDisable<cr>', { desc = '[T]wighlight[D]isanable' })

vim.keymap.set('n', '<leader>df', '<cmd>DiffviewOpen<cr>', { desc = 'Git [D]i[F]f' })
