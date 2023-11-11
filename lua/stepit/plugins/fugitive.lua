return {
	"tpope/vim-fugitive",
	name = "Fugitive",

	config = function()
		-- git status
		vim.keymap.set("n", "<leader>gs", ":Git<CR>")
		-- git push
		vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
	end
}
