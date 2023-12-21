-- vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 0
vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

local opt = vim.opt                           -- Set options

opt.mouse = 'a'                               -- Enable mouse support
opt.clipboard = 'unnamedplus'                 -- Copy/paste to/from system clipboard
opt.completeopt = 'menuone,noinsert,noselect' -- Autocomplete options

-- Enables 24-bit RGB color
opt.termguicolors = true

opt.number = true -- Show line number
opt.relativenumber = true

opt.showmatch = true  -- Highlight matching parenthesis

opt.splitright = true -- Vertical split to the right
opt.splitbelow = true -- Horizontal split to the bottom

-- Ignore case letters when search
opt.ignorecase = true
-- Ignore ignorecase when search has uppercase characters
opt.smartcase = true

opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 4      -- Width of a tab character when saving
opt.softtabstop = 4
-- (:h shiftwidth)
opt.shiftwidth = 4     -- Blanks inserted in automatic indentation. 0 fall back to tabstop
opt.smartindent = true -- Autoindent new lines

-- Avoid wrapping words in new line
opt.wrap = false

-- Stop creating swap files
opt.swapfile = false

-- Highlight while writing in search
opt.incsearch = true

-- Create a split below with affected text during change
opt.inccommand = "split"

opt.updatetime = 50

opt.scrolloff = 10 -- never less than 10 lines at bottom and top
opt.sidescrolloff = 5
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.colorcolumn = "100"

-- move up and down remaining in the same column
-- opt.virtualedit = "all"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

vim.g.blamer_enabled = true
vim.g.blamer_show_in_visual_modes = false

-- spelling check
opt.spelllang = 'en_us'
opt.spell = true

opt.list = true
opt.listchars = { space = "·", trail = "·", tab = "> " }


-- Allow the cursor to move where no character is present.
opt.virtualedit = "block"
