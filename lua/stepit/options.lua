vim.g.netrw_banner = 0

local opt = vim.opt                           -- Set options

opt.mouse = 'a'                               -- Enable mouse support
opt.clipboard = 'unnamedplus'                 -- Copy/paste to system clipboard
opt.completeopt = 'menuone,noinsert,noselect' -- Autocomplete options
opt.termguicolors = true

opt.number = true -- Show line number
opt.relativenumber = true

opt.showmatch = true   -- Highlight matching parenthesis

opt.splitright = true  -- Vertical split to the right
opt.splitbelow = true  -- Horizontal split to the bottom

opt.ignorecase = true  -- Ignore case letters when search
opt.smartcase = true   -- Ignore ignorecase when search has uppercase characters

opt.tabstop = 4        -- Width of a tab character
opt.softtabstop = 4
opt.shiftwidth = 4     -- Blanks inserted in automatic indentation. 0 fall back to tabstop
opt.expandtab = true   -- Use spaces instead of tabs
opt.smartindent = true -- Autoindent new lines

opt.wrap = false

opt.swapfile = false

opt.incsearch = true -- highligh while writing in search

opt.updatetime = 50

-- opt.scrolloff = 10 -- never less than 10 lines at bottom and top
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.colorcolumn = "80"

-- move up and down remaining in the same column
-- opt.virtualedit = "all"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

vim.g.blamer_enabled = true
vim.g.blamer_show_in_visual_modes = false
