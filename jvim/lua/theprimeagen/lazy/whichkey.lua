return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		preset = "helix",
		-- or leave it empty to use the default settings
		spec = {
			{ "<leader>G", group = "Git", icon = {icon="", color = 'orange' }},
			{ "<leader>g", group = "Go" },
			{ "<leader>s", group = "Search" },
			{ "<leader>f", group = "Find", },
		},
		-- refer to the configuration section below
	},
	plugins = {
		marks = true, -- shows a list of your marks on ' and `
		registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		-- the presets plugin, adds help for a bunch of default keybindings in Neovim
		-- No actual key bindings are created
		spelling = {
			enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
			suggestions = 20, -- how many suggestions should be shown in the list?
		},
		presets = {
			operators = true, -- adds help for operators like d, y, ...
			motions = true, -- adds help for motions
			text_objects = true, -- help for text objects triggered after entering an operator
			windows = true, -- default bindings on <c-w>
			nav = true, -- misc bindings to work with windows
			z = true, -- bindings for folds, spelling and others prefixed with z
			g = true, -- bindings for prefixed with g
		},
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
		{ "<leader>e", "<cmd>Neotree reveal<cr>", desc = "Explorer NeoTree", silent = true },
	},
}
