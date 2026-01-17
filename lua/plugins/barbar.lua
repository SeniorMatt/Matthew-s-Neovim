return
{
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
        animation = false,
        insert_at_start = false,
        -- …etc.
        vim.keymap.set("n", "<S-h>", "<cmd>BufferPrevious<CR>"),
        vim.keymap.set("n", "<S-l>", "<cmd>BufferNext<CR>"),
        vim.keymap.set("n", "<A-H>", "<cmd>BufferMovePrevious<CR>"),
        vim.keymap.set("n", "<A-L>", "<cmd>BufferMoveNext<CR>"),
        vim.keymap.set("n", "<leader>x", "<cmd>BufferClose<CR>"),
        vim.keymap.set("n", "<leader>r", "<cmd>BufferRestore<CR>"),
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
