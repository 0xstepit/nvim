vim.g.mapleader = ' '

-- Netrw
-- toggle netrw on the left
vim.keymap.set("n", '<leader>ee', ":Lexplore<CR>")
vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, {remap = true, buffer = true})
    end 

    bind('e', '%') -- new file
    bind('L', '<CR>') -- open file
    bind("D", ":!rm -rf ") -- delete
  end
})

-- netw size
vim.g.netrw_winsize = "17"
vim.g.netrw_keepdir = 0
-- easy exit from insert mode
vim.keymap.set("i", 'jj', "<Esc>")

-- easy save
vim.keymap.set("n", '<leader>w', ":w<CR>")

-- move up and down selected text in visual mode
vim.keymap.set("v", 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set("v", 'K', ":m '<-2<CR>gv=gv")
