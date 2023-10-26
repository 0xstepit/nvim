return {
    "ThePrimeagen/harpoon",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = true,
    keys = {
        { "<leader>aa", "<cmd>lua require('harpoon.mark').add_file()<cr>",        desc = "Mark file with harpoon" },
        { "<leader>an", "<cmd>lua require('harpoon.ui').nav_next()<cr>",          desc = "Go to next harpoon mark" },
        { "<leader>ap", "<cmd>lua require('harpoon.ui').nav_prev()<cr>",          desc = "Go to previous harpoon mark" },
        { "<leader>am", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
        { "<leader>a1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>",         desc = "Go to previous harpoon mark" },
        { "<leader>a2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>",         desc = "Go to previous harpoon mark" },
        { "<leader>a3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>",         desc = "Go to previous harpoon mark" },
        { "<leader>a4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>",         desc = "Go to previous harpoon mark" },
    },
}
