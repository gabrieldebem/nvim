return {
  "stevearc/aerial.nvim",
  config = function()
    require("aerial").setup({
      on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
      end,
      layout = {
        max_width = { 40, 0.2 },
        width = nil,
        min_width = 40,
        win_opts = {},
        default_direction = "left",
        placement = "window",
        preserve_equality = false,
      },
    })
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
