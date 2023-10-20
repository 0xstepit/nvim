local opt = vim.opt -- Set options

opt.mouse = 'a'                               -- Enable mouse support
opt.clipboard = 'unnamedplus'                 -- Copy/paste to system clipboard
opt.completeopt = 'menuone,noinsert,noselect' -- Autocomplete options
opt.termguicolors = true

opt.number = true       -- Show line number
opt.relativenumber = true

opt.showmatch = true    -- Highlight matching parenthesis

opt.splitright = true   -- Vertical split to the right
opt.splitbelow = true   -- Horizontal split to the bottom

opt.ignorecase = true   -- Ignore case letters when search
opt.smartcase = true    -- Ignore ignorecase when search has uppercase characters

opt.linebreak = true    -- Wrap on word boundary

opt.tabstop = 4        -- Width of a tab character
opt.shiftwidth = 2     -- Blanks inserted in automatic indentation. 0 fall back to tabstop
opt.expandtab = true   -- Use spaces instead of tabs
opt.smarttab = true
opt.smartindent = true -- Autoindent new lines

vim.opt.wrap = false

vim.opt.updatetime = 50

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
