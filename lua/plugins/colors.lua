local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
return {
    {
        -- Theme
        -- "folke/tokyonight.nvim",
        -- config = function()
        -- vim.cmd.colorscheme "tokyonight"
        -- enable_transparency()
        -- end
        --"catppuccin/nvim",
        -- config = function()
        -- vim.cmd.colorscheme "catppuccin"
        -- end
        "navarasu/onedark.nvim",
        config = function()
            vim.cmd.colorscheme "onedark"
        end
    },
    {
        -- Bottom line
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = 'onedark',
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
