local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	{ import = "stepit.plugins" },
	{ 'APZelos/blamer.nvim' },
	{ "tpope/vim-surround" },
	{
		'numToStr/Comment.nvim',
		opts = {
		},
		lazy = false,
	},
})
