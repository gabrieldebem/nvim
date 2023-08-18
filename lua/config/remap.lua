vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local nmap = function(keys, func, desc)
    if desc then
        desc = 'LSP: ' .. desc
    end
    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end

-- Diagnostic keymap
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Lsp keymap
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

nmap('<leader>=', function()
    if vim.lsp.buf.format then
        vim.lsp.buf.format()
    elseif vim.lsp.buf.formatting then
        vim.lsp.buf.formatting()
    end
end, 'Format current buffer with LSP')

-- Window keymap
vim.keymap.set('n', '<leader>s', "<cmd>split<cr>", { desc = "Horizontal [s]plit" })
vim.keymap.set('n', '<leader>sv', "<cmd>vert split<cr>", { desc = "[V]ertical split" })
vim.keymap.set('n', '<leader>sj', "<c-w>w", { desc = "Next window" })
vim.keymap.set('n', '<leader>sk', "<c-w>w", { desc = "Previous windor" })

-- Neogit keymap
vim.keymap.set('n', '<leader>gg', "<cmd>Neogit<cr>", { desc = "[G]o to [G]it" })

-- Neotree keymap
vim.keymap.set('n', '<leader>rc', "<cmd>Neotree toggle<cr>")
vim.keymap.set('n', '<leader>rg', "<cmd>Neotree git_status<cr>")
vim.keymap.set('n', '<leader>rb', "<cmd>Neotree buffers<cr>")

-- Diffview keymap
vim.keymap.set('n', '<leader>df', '<cmd>DiffviewOpen<cr>', { desc = 'Git [D]i[F]f' })

-- Flutter keymap
vim.keymap.set("n", "\\frun", "<cmd>FlutterRun<cr>", { desc = "[F]lutter [R]un" })
vim.keymap.set("n", "\\frt", "<cmd>FlutterRestart<cr>", { desc = "[F]lutter [R]estart" })
vim.keymap.set("n", "\\fq", "<cmd>FlutterQuit<cr>", { desc = "[F]lutter [Q]uit" })
vim.keymap.set("n", "\\fp", "<cmd>FlutterPubGet<cr>", { desc = "[F]lutter [P]ub Get" })
vim.keymap.set("n", "\\fc", "<cmd>FlutterLogClear<cr>", { desc = "[F]lutter Log [C]lear" })
vim.keymap.set("n", "\\fd", "<cmd>FlutterDevices<cr>", { desc = "[F]lutter [D]evices" })

-- Flash keymap
vim.keymap.set({ 'n', 'x', 'o' }, 's', function() require("flash").jump() end, { desc = "Flash [s]earch" })
vim.keymap.set({ 'n', 'x', 'o' }, 'S', function() require("flash").treesitter() end, { desc = "Flash backward [S]earch" })

-- Telescope keymap
vim.keymap.set('n', '<leader>a', '<cmd>Telescope aerial<CR>')
vim.keymap.set('n', '<leader>ss', "<cmd>Telescope colorscheme<cr>", { desc = "[S]earch [S]tyle" })
vim.keymap.set('n', '<leader>fc', "<cmd>Telescope flutter commands<cr>", { desc = "[F]lutter [C]ommands" })

-- Dap keymap
vim.keymap.set('n', '<leader>dc', "<cmd>DapContinue<cr>", { desc = "[D]ebug [C]ontinue" })
vim.keymap.set('n', '<leader>dt', "<cmd>DapTerminate<cr>", { desc = "[D]ebug [T]erminate" })
vim.keymap.set('n', '<leader>ds', "<cmd>DapStepOver<cr>", { desc = "[D]ebug [S]tep [O]ver" })
vim.keymap.set('n', '<leader>dS', "<cmd>DapStepOut<cr>", { desc = "[D]ebug [S]tep [O]ut" })
vim.keymap.set('n', '<leader>db', "<cmd>DapToggleBreakpoint<cr>", { desc = "[D]ebug [B]reakPoint" })




-- Mix keymap
vim.keymap.set('x', '<leader>p', "\"_dP", { desc = "[P]aste" })
vim.keymap.set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[R]eplace [A]ll" })
vim.keymap.set('n', '<leader><Space>', ':w<cr>')
vim.keymap.set('n', '<leader>Q', "<cmd>q<cr>")
vim.keymap.set('n', '<leader>tc', '<cmd>tabc<cr>', { desc = '[T]ab [C]lose' })
vim.keymap.set('n', '<leader>H', '<cmd>nohlsearch<cr>', { desc = 'Clear [H]ighlight' })

-- Vim options
vim.opt.shell = '/bin/zsh'
vim.opt_local.iskeyword:append('$')
vim.opt.clipboard = 'unnamedplus,unnamed'

vim.cmd.set('number', 'relativenumber')
