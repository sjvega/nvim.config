return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},
		config = function()
			pcall(require("telescope").load_extension, "projects")

			local builtin = require("telescope.builtin")
			Nmap("<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
			Nmap("<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
			Nmap("<leader><leader>", builtin.find_files, { desc = "[S]earch [F]iles" })
			Nmap("<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
			Nmap("<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
			Nmap("<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
			Nmap("<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
			Nmap("<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
			Nmap("<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
			Nmap("<leader>sb", builtin.buffers, { desc = "[ ] Find existing buffers" })

			-- Slightly advanced example of overriding default behavior and theme
			Nmap("<leader>s/", function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })

			-- Shortcut for searching your Neovim configuration files
			Nmap("<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })

			local project = require("telescope").extensions.projects
			Nmap("<leader>sp", project.projects, { desc = "[S]earch [P]rojects" })
		end,
	},
	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup({})
		end,
	},
}
