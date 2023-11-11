return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	name = "Telescope",
	enabled = true,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		-- We need to configure both options and keymaps inside config because:
		-- - options are configure using telescope actions
		-- - keymaps are configured usaing telescope builtin

		-- Options
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate" },
				fuzzy = true,
				mappings = {
					i = {
						-- move up in Results
						["<C-k>"] = actions.move_selection_previous,
						-- move down in Results
						["<C-j>"] = actions.move_selection_next,
						-- move up in Results
						["<C-y>"] = actions.select_default,
						-- close window
						["<C-c>"] = actions.close,
					},
				},
			},
		})

		-- Change current directory for Telescope
		vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>")

		-- Keymaps
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>fg", builtin.git_files)
		vim.keymap.set("n", "<leader>fl", builtin.live_grep)
		vim.keymap.set("n", "<leader><space>", builtin.buffers)
		vim.keymap.set("n", "<leader>fs", builtin.grep_string)
	end,
}
