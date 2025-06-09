return {
  "neovim/nvim-lspconfig",  -- Adiciona o plugin lspconfig
  dependencies = { "williamboman/mason-lspconfig.nvim", "williamboman/mason.nvim", "hrsh7th/nvim-cmp" },
  config = function()
    local lsp = require('lsp-zero').preset({})

    lsp.on_attach(function(client, bufnr)
      lsp.default_keymaps({ buffer = bufnr })
    end)

    local lspconfig = require("lspconfig")

    -- Configuração do LSP para Lua
    lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

    -- Configuração do LSP para OmniSharp (C#)
    -- lspconfig.omnisharp.setup {
    --   cmd = { "omnisharp" },       -- Nome do comando, o Mason instala o OmniSharp por padrão
    --   root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj"),
    --   on_attach = function(client, bufnr)
    --     local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    --     buf_set_option("omnisharp", "omnisharp")

    --     -- Configuração de mapeamentos personalizados para comandos LSP
    --     local opts = { noremap = true, silent = true }
    --     vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
    --     vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    --     vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    --     vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    --   end,
    --   capabilities = vim.lsp.protocol.make_client_capabilities()
    -- }

    lsp.setup()
  end
}
