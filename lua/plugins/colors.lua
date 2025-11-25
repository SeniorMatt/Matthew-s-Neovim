local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
return {
    {
        -- Theme
        -- "folke/tokyonight.nvim",
        -- vim.cmd.colorscheme "tokyonight"
        -- enable_transparency()
        --"catppuccin/nvim",
        -- vim.cmd.colorscheme "catppuccin"
        -- "navarasu/onedark.nvim",
        -- vim.cmd.colorscheme "onedark"
        -- "morhetz/gruvbox",
        -- vim.cmd.colorscheme "gruvbox"
        -- "Mofiqul/vscode.nvim",
        -- vim.cmd.colorscheme "vscode"
        -- "sainnhe/everforest",
        -- vim.cmd.colorscheme "everforest"
        "kdheepak/monochrome.nvim",
        config = function()
            vim.cmd.colorscheme "monochrome"
        end
    },
    {
        -- Bottom line
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = 'everforset',
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
