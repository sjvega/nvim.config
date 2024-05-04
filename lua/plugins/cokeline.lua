return {
	"willothy/nvim-cokeline",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Required for v0.4.0+
		"nvim-tree/nvim-web-devicons", -- If you want devicons
		"stevearc/resession.nvim", -- Optional, for persistent history
	},
	config = true,
	init = function()
		Nmap("<leader>bp", function()
			require("cokeline.mappings").pick("focus")
		end, { desc = "[B]uffer [P]ick" })
		Nmap("<leader>bc", function()
			require("cokeline.mappings").pick("close")
		end, { desc = "[B]uffer [c]ick" })
	end,
}
