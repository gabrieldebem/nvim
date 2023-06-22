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

nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
nmap('gr', vim.lsp.buf.references, '[G]oto [R]eferences')
nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')

nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')

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
vim.keymap.set('n', '<leader>t', "<cmd>tabe<cr>", { desc = "Open a new [T]ab" })

vim.keymap.set('n', '<leader>rc', vim.cmd.Ex)
vim.keymap.set('x', '<leader>p', "\"_dP")

vim.keymap.set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "\\frun", "<cmd>FlutterRun<cr>")
vim.keymap.set("n", "\\frt", "<cmd>FlutterRestart<cr>")
vim.keymap.set("n", "\\fq", "<cmd>FlutterQuit<cr>")
vim.keymap.set('n', '\\a', '<cmd>AerialToggle!<CR>')
vim.keymap.set('n', '<leader>a', '<cmd>Telescope aerial<CR>')
vim.api.nvim_set_keymap(
  "n",
  "<leader><cr>",
  ":Telescope file_browser<cr>",
  { noremap = true }
)

vim.opt.shell = '/bin/zsh'
vim.opt_local.iskeyword:append('$')
vim.opt.clipboard = 'unnamedplus,unnamed'
