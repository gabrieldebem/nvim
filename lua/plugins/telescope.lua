return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local builtin = require('telescope.builtin')
      require('telescope').load_extension "aerial"
      require("telescope").load_extension("notify")

      vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
      vim.keymap.set('n', '<leader>sp', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>b', builtin.buffers, {})
      vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    end
  }
}
