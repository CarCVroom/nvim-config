require("nvim-treesitter").setup()

require("nvim-treesitter").install({
    "c",
    "lua",
    "rust",
    "javascript",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "c",
        "lua",
        "rust",
        "javascript",
    },
    callback = function()
        vim.treesitter.start()
    end,
})
