return {
	"stevearc/oil.nvim",
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	-- Optional dependencies
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	keys = {
		{
			mode = "n",
			"-",
			function()
				require("oil").open()
			end,
			desc = "Oil: Open parent directory",
		},
	},
}
