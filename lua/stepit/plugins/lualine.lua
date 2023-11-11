return {
	"nvim-lualine/lualine.nvim",
	name = "Lualine",
	enabled = true,
	opts = {
		icons_enabled = false,
		-- lualine bar only under focused pane
		globalstatus = false,
		-- { left = '', right = '' }
		component_separators = { "" },
		-- displayed at the bottom
		sections = {
			lualine_a = { 'branch' },
			lualine_b = { 'diff', 'diagnostics' },
			lualine_c = { 'mode', 'require"lsp-status".status()' },
			lualine_x = { 'encoding', 'filetype' },
			lualine_y = { 'filesize' },
			lualine_z = { 'progress', 'location', 'searchcount' }
		},
		-- displayed at the top
		tabline = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {
				{
					'filename',
					file_status = true,
					newfile_status = false,
					path = 3,
				},
			},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {}
		},
	},
}
