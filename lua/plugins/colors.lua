return {
    {
        -- Theme
        "ellisonleao/gruvbox.nvim",
        config = function()
            vim.cmd.colorscheme "gruvbox"
        end
    },
    {
        -- Bottom line
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = 'auto',
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'lsp_status', 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' }
            },
        }
    },
}
