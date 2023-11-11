-- space as leader
vim.g.mapleader = ' '

-- GENERAL
-- exit from insert mode
vim.keymap.set("i", 'jj', "<Esc>")

-- remove search highlight
vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>")

-- save file
vim.keymap.set("n", '<leader>w', ":w<CR>")

-- using J doesn't move the cursor
vim.keymap.set("n", 'J', "mzJ`z")

-- IN PANE
-- half page movement with centered cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move up and down multiple lines
vim.keymap.set("n", "<C-k>", "10k")
vim.keymap.set("n", "<C-j>", "10j")

-- search with centered result
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- allows to indent multiple times in visual mode
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- move up and down selected text in visual mode
vim.keymap.set("v", 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set("v", 'K', ":m '<-2<CR>gv=gv")

-- CROSS PANES
-- jump pane on left
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
-- jump pane on bottom
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>")
-- jump pane on top
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>")
-- jump pane on right
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>")

-- open split vertical
vim.keymap.set("n", "<leader><c-v>", ":vs<cr>")

-- NETRW
-- toggle netrw
vim.keymap.set("n", '<leader>ee', ":Ex<CR>")
vim.api.nvim_create_autocmd('filetype', {
	pattern = 'netrw',
	desc = 'Better mappings for netrw',
	callback = function()
		local bind = function(lhs, rhs)
			vim.keymap.set('n', lhs, rhs, { remap = true, buffer = true })
		end
		-- new file
		bind('e', '%')
		-- open file
		bind('L', '<CR>')
	end
})
