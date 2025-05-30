return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "php", "dart", "markdown", "html", "python", "go" },
        sync_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { "lua", "php", "dart", "markdown", "blade", "python" },
          disable = { "bash" },
        },
        indent = {
          enable = false,
        },
      })

      local aucmd_dict = {
        FileType = {
          {
            pattern = "php",
            callback = function()
              vim.opt_local.foldenable = false
              vim.opt_local.foldmethod = "expr"
              vim.opt_local.foldexpr = "nvim_treesitter#foldexpr()"
              vim.opt_local.tabstop = 4
            end,
          },
          {
            pattern = "lua",
            callback = function()
              vim.cmd([[TSBufEnable indent]])
            end,
          },
        }
      }

      for event, opt_tbls in pairs(aucmd_dict) do
        for _, opt_tbl in pairs(opt_tbls) do
          vim.api.nvim_create_autocmd(event, opt_tbl)
        end
      end
    end
  }
}