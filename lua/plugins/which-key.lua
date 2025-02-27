return {
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function() -- This is the function that runs, AFTER loading
		require("which-key").setup()

		-- Document existing key chains
		require("which-key").add({
			{ "<leader>c", group = "[C]ode Actions" },
			{ "<leader>c_", hidden = true },
			{ "<leader>d", group = "[D]ocument" },
			{ "<leader>d_", hidden = true },
			{ "<leader>r", group = "[R]ename" },
			{ "<leader>r_", hidden = true },
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>s_", hidden = true },
			{ "<leader>w", group = "[W]orkspace" },
			{ "<leader>w_", hidden = true },
			{ "<leader>g", group = "[G]it" },
			{ "<leader>g_", hidden = true },
			{ "<leader>f", group = "[F]ile search" },
			{ "<leader>f_", hidden = true },
			{ "<leader>/", group = "Grep" },
			{ "<leader>/_", hidden = true },
		})
	end,
}
