return {
    'relastle/bluewery.vim',
    -- 'morhetz/gruvbox',
    -- "catppuccin/nvim",
    -- name = "catppuccin",
    -- priority = 1000,
    -- 'projekt0n/github-nvim-theme',
    lazy = false,
    config = function()
        vim.opt.background = 'dark'
        vim.cmd.colorscheme('bluewery')
        vim.cmd([[highlight Normal ctermbg=0 guibg=#222830]])
        vim.cmd([[highlight Operator ctermbg=0 guifg=#ff007a]])
        vim.cmd([[highlight Special ctermbg=0 cterm=bold gui=bold guifg=#603fef]])
        vim.cmd([[highlight ColorColumn ctermbg=0 guibg=#603fef]])
        vim.cmd([[highlight GitSignsAdd ctermbg=0 guibg=#603fef]])
        --vim.cmd([[highlight NonText ctermfg=8 guifg=#183e45]])
        vim.cmd([[highlight Sring ctermbg=0 guibg=#603fef]])
    end,
}
