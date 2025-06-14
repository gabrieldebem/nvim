vim.g.mapleader = " "
vim.g.maplocalleader = " "

local nmap = function(keys, func, desc)
    if desc then
        desc = 'LSP: ' .. desc
    end
    vim.keymap.set('n', keys, func, { desc = desc })
end

-- Diagnostic keymap
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Lsp keymap
nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
nmap('gd', "<cmd>Telescope lsp_definitions<CR>", '[G]oto [D]efinition')
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

-- nmap('<leader>FF', '<cmd>!php-cs-fixer --rules=@PSR12 --using-cache=no fix % | php-cs-fixer --rules=@Symfony --using-cache=no fix %<cr>')
nmap('<leader>FF', '<cmd>!phpcbf --standard="PSR12" % | phpcbf --standard="PSR1" % | phpcbf --standard="PSR2" %<cr>')

-- Window keymap
vim.keymap.set('n', '<leader>s', "<cmd>split<cr>", { desc = "Horizontal [s]plit" })
vim.keymap.set('n', '<leader>sv', "<cmd>vert split<cr>", { desc = "[V]ertical split" })
vim.keymap.set('n', '<leader>sj', "<c-w>w", { desc = "Next window" })
vim.keymap.set('n', '<leader>sk', "<c-w>w", { desc = "Previous windor" })

-- Neogit keymap
vim.keymap.set('n', '<leader>gg', "<cmd>G<cr>", { desc = "[G]o to [G]it" })
vim.keymap.set('n', '<leader>gs', "<cmd>G status<cr>", { desc = "[G]it [S]tatus" })

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
vim.keymap.set('n', '<leader>tt', '<cmd>tabe term://zsh<cr>', { desc = '[T]ab [T]erm' })
vim.keymap.set('n', '<leader>H', '<cmd>nohlsearch<cr>', { desc = 'Clear [H]ighlight' })

-- Vim options
vim.opt.shell = '/bin/zsh'
vim.opt_local.iskeyword:append('$')
vim.opt.clipboard = 'unnamedplus,unnamed'
vim.opt.smartindent = true

-- Em ambientes wayland o clipboard padrão é o wl-copy, mas não funcionou muito bem
-- vim.g.clipboard = {
--   copy = {
--     ["+"] = "xclip -selection clipboard",
--     ["*"] = "xclip -selection primary",
--   },
--   paste = {
--     ["+"] = "xclip -selection clipboard -o",
--     ["*"] = "xclip -selection primary -o",
--   },
-- }

vim.cmd.set('number', 'relativenumber')
vim.keymap.set('n', '<leader>cc', "<cmd>bufdo bd<cr>", { desc = "Buffer [C]lose" })

-- Git Conflicts
vim.api.nvim_create_autocmd('User', {
  pattern = 'GitConflictDetected',
  callback = function()
    vim.notify('Conflict detected in '..vim.fn.expand('<afile>'))
    vim.keymap.set('n', 'cww', function()
      engage.conflict_buster()
      create_buffer_local_mappings()
    end)
  end
})
vim.keymap.set('n', '<leader>cr', '<cmd>GitConflictListQf<cr>', { desc = 'Git [C]onflict [R]esolve' })
vim.keymap.set('n', '<leader>ch', '<cmd>CopilotChat<cr>', { desc = 'Copilot [Ch]at' })
vim.api.nvim_set_keymap(
	"n",
	"<leader>ks",
	":lua require('keep-it-secret').toggle()<CR>",
	{ noremap = true, silent = true }
)

vim.g.copilot_proxy_strict_ssl = false
vim.g.copilot_debug = true
vim.g.copilot_browser = "/Applications/Firefox.app/Contents/MacOS/firefox"

-- Only on MacOS
vim.keymap.set('n', '<leader>lf', '<cmd>!open %:p<cr>', { desc = 'Open file in default browser' })
