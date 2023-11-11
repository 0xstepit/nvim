-- Description: allows to have multiple history dimensions
-- for the file we are working on.
return {
	"mbbill/undotree",
	name = "Undotree",

	config = function()
		-- open undotree
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end
}
