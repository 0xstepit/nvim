return {
    "lewis6991/gitsigns.nvim",
    events = { 'BufReadPre', 'BufNewFile' },
    opts = {
        signs = {
            add = { text = '+' },
            change = { text = '~' },
            delete = { text = '➤' },
            topdelete = { text = '➤' },
            changedelete = { text = 'x' },
        }
    },
    lazy = false,
}
