require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "php", "dart", "markdown" },
  sync_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { "lua", "php", "dart", "markdown" },
  },
  indent = {
    enable = false,
  },
})
