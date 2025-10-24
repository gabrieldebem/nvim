return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason-lspconfig.nvim", "williamboman/mason.nvim", "hrsh7th/nvim-cmp" },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup()

    vim.lsp.start({
      name = "lua_ls",
      cmd = {"lua-language-server"},
      root_dir = vim.fs.dirname(vim.fs.find({'init.lua', '.luarc.json', '.luarc.jsonc'}, { upward = true })[1]),
      settings = {
        Lua = {
          runtime = { version = 'LuaJIT' },
          diagnostics = { globals = { 'vim' } },
          workspace = { library = vim.api.nvim_get_runtime_file("", true) },
          telemetry = { enable = false },
        }
      }
    })
  end
}
