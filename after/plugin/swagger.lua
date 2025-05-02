require("swagger-preview").setup({
    port = 8000,
    host = "localhost",
})

vim.keymap.set("n", "<leader>sw", "<cmd>SwaggerPreviewToggle<CR>", { desc = "Swagger Preview Toggle" })
