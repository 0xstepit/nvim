return {
    'relastle/bluewery.vim',
    -- 'morhetz/gruvbox',
    -- "catppuccin/nvim",
    -- name = "catppuccin",
    -- priority = 1000,
    -- 'projekt0n/github-nvim-theme',
    lazy = false,
    config = function()
        -- Colors
        local C = {}
        C.black = '#222830'
        C.white = '#ffffff'
        C.blue = '#4293f7'
        C.purple = '#a370f7'
        C.pink = '#b3409b'
        C.red = '#d6537b'
        C.turquoise = '#67c9ca'
        C.persianGreen = '#00A693'
        C.strongCyan = '#00add8'
        C.frenchFuchsia = '#FD3F92'
        C.veryDarkBlue = '#0f232b'

        C.cornFlower = '#6495ED'
        C.violet = '#8a59dd'
        C.pastelYellow = '#ffffba'
        C.pastelPink = '#fb6f92'
        C.pastelGreen = '#77dd77'
        C.pink = '#FF409B'
        C.lightblue = '#33CCCC'
        C.junglegreen = '#2AAA8A'
        C.babyBlue = '#89cff0'

        vim.opt.background = 'dark'
        vim.cmd.colorscheme('bluewery')

        vim.cmd([[highlight Normal ctermfg=white ctermbg=0 guibg=]] .. C.black)
        vim.cmd([[highlight NonText ctermbg=0 guibg=]] .. C.black)
        vim.cmd([[highlight Function cterm=bold gui=bold ctermbg=0 guifg=]] .. C.purple)
        vim.cmd([[highlight String ctermbg=0 guifg=]] .. C.turquoise)
        vim.cmd([[highlight Identifier ctermbg=0 guifg=]] .. C.white)
        vim.cmd([[highlight Statement ctermbg=0 guifg=]] .. C.red)
        vim.cmd([[highlight Operator ctermbg=0 guifg=]] .. C.red)
        vim.cmd([[highlight ColorColumn ctermbg=0 guibg=]] .. C.veryDarkBlue)
        vim.cmd([[highlight Special ctermbg=0 cterm=bold gui=bold guifg=]] .. C.persianGreen)

        vim.cmd([[highlight Type ctermbg=0 guifg=]] .. C.blue)
        vim.cmd([[highlight Structure ctermbg=0 guifg=]] .. C.violet)
        -- Git
        vim.cmd([[highlight GitSignsAdd guifg=]] .. C.junglegreen)
    end,
}
