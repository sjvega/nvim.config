return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	setup = function()
		local trouble = require("trouble")
		Nmap("<leader>xx", trouble.toggle(), { desc = "Trouble toggle" })
		Nmap("<leader>xq", trouble.toggle("quickfix"), { desc = "Trouble quickfix" })
		Nmap("gR", trouble.toggle("lsp_references"))
	end,
}
