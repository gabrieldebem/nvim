return {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("diffview").setup()
  end,
}
