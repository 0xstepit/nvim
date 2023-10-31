return {
    'relastle/bluewery.vim',
    lazy = false,
    config = function()
        vim.cmd.colorscheme('bluewery')
        vim.cmd([[highlight ColorColumn ctermbg=0 guibg=#603fef]])
        vim.cmd([[highlight GitSignsAdd ctermbg=0 guibg=#603fef]])
        vim.cmd([[highlight NonText ctermfg=8 guifg=#183e45]])
        vim.cmd([[highlight Sring ctermbg=0 guibg=#603fef]])
    end,
}
