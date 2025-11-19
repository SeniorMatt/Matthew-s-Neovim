return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = { enable = true, },
            indent = { enable = true },
            autotage = { enable = true },
            ensure_installed = { "lua", "c_sharp" },
            auto_install = false,
        })
        vim.keymap.set("n", "<C-h>", "<C-w>h")
        vim.keymap.set("n", "<C-j>", "<C-w>j")
        vim.keymap.set("n", "<C-k>", "<C-w>k")
        vim.keymap.set("n", "<C-l>", "<C-w>l")
    end
}
