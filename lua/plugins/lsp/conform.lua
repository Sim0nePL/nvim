return {
	"stevearc/conform.nvim",
	event = { "InsertEnter" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
		},
	},
	keys = {
		{
			mode = { "n", "v" },
			"<leader>cf",
			function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				})
			end,
			desc = "Conform: Code Format",
		},
	},
}
