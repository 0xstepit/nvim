vim.g.mapleader = ' '

-- Netrw
-- toggle netrw on the left
vim.keymap.set("n", '<leader>ee', ":Ex<CR>")
vim.api.nvim_create_autocmd('filetype', {
    pattern = 'netrw',
    desc = 'Better mappings for netrw',
    callback = function()
        local bind = function(lhs, rhs)
            vim.keymap.set('n', lhs, rhs, { remap = true, buffer = true })
        end

        bind('e', '%')    -- new file
        bind('L', '<CR>') -- open file
    end
})

-- open split vertical
vim.keymap.set("n", "<leader><c-v>", ":vs<cr>")

-- easy exit from insert mode
vim.keymap.set("i", 'jj', "<Esc>")

-- half page movement with centered cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- easy save
vim.keymap.set("n", '<leader>w', ":w<CR>")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- move up and down selected text in visual mode
vim.keymap.set("v", 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set("v", 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set("n", 'J', "mzJ`z") -- using J doesn't move the cursor

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>")

-- Jump within panes
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>") -- jump pane on left
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>") -- jump pane on bottom
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>") -- jump pane on top
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>") -- jump pane on right

vim.keymap.set("n", "<C-k>", "10k")
vim.keymap.set("n", "<C-j>", "10j")

-- Change current directory for Telescope to work properly
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>")
