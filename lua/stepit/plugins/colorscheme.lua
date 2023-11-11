return {
	"relastle/bluewery.vim",
	lazy = false,
	config = function()
		-- Colors table
		local C = {}
		C.black = "#222830"
		C.white = "#ffffff"
		C.blue = "#4293f7"
		C.purple = "#a370f7"
		C.pink = "#b3409b"
		C.red = "#d6537b"
		C.turquoise = "#67c9ca"
		C.persianGreen = "#00A693"
		C.strongCyan = "#00add8"
		C.frenchFuchsia = "#FD3F92"
		C.veryDarkBlue = "#0f232b"
		C.darkModerateCyan = "#296873"
		C.amber = "#FFBF00"
		C.steelBlue = "#4682B4"

		vim.opt.background = 'dark'
		vim.cmd.colorscheme('bluewery')

		vim.api.nvim_set_hl(0, "ColorColumn", { bg = C.veryDarkBlue })
		vim.api.nvim_set_hl(0, "Normal", { bg = C.black })
		vim.api.nvim_set_hl(0, "NonText", { bg = C.black, fg = C.lightblue })
		vim.api.nvim_set_hl(0, "Function", { fg = C.purple })
		vim.api.nvim_set_hl(0, "String", { fg = C.turquoise })
		vim.api.nvim_set_hl(0, "Identifier", { fg = C.white })
		vim.api.nvim_set_hl(0, "Statement", { fg = C.red })
		vim.api.nvim_set_hl(0, "Operator", { fg = C.red })
		vim.api.nvim_set_hl(0, "Special", { fg = C.persianGreen })
		vim.api.nvim_set_hl(0, "Type", { fg = C.turquoise })
		vim.api.nvim_set_hl(0, "Structure", { fg = C.violet })
		vim.api.nvim_set_hl(0, "Comment", { fg = C.darkModerateCyan })
		vim.api.nvim_set_hl(0, "NonText", { link = "Comment" })
		vim.api.nvim_set_hl(0, "Search", { bg = C.steelBlue })

		-- Gitsign
		vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = C.veryDarkBlue, fg = C.persianGreen })
		vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = C.veryDarkBlue, fg = C.red })
		vim.api.nvim_set_hl(0, "GitSignsChange", { bg = C.veryDarkBlue, fg = C.amber })
	end,
}
