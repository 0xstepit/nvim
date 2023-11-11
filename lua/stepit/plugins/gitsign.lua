-- Description: visualize git signs for the current file.
return {
	"lewis6991/gitsigns.nvim",
	name = "Gitsigns",
	events = { "BufReadPre", "BufNewFile" },
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "➤" },
			topdelete = { text = "➤" },
			changedelete = { text = "x" },
		}
	},
}
