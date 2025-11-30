return {
	'stevearc/conform.nvim',
	opts = {
		formatters_by_ft = {
			javascript = { "biome", "prettier", "biome-organize-imports" },
			typescript = { "biome", "prettier", "biome-organize-imports" },
			css = { "prettier" },
			html = { "prettier" },
			json = { "biome", "prettier" },
			yaml = { "yq", "prettier" },
			markdown = { "prettier" },
			graphql = { "prettier" },
		},
		-- format_on_save = {
		-- 	lsp_fallback = true,
		-- 	async = false,
		-- 	timeout_ms = 2000,
		-- },
	},
	keys = {
		{
			'<leader>cf',
			function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				})
			end,
			mode = { 'n', 'v' },
			{ desc = "Conform format file or range (in visual mode)" }
		},
	}
}
