-- Define your LSP servers here
local servers = {
	lua_ls = { },
}

-- Setting up LSP servers
return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		init = function ()
			-- LSP config
			for server, config in pairs(servers) do
				vim.lsp.config(server, config)
				vim.lsp.enable(server)
			end

			-- Diagnostics
			vim.diagnostic.config {
				severity_sort = true,
				float = {
					border = 'rounded',
					source = 'if_many'
				},
				underline = { severity = vim.diagnostic.severity.ERROR },
				signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = '󰅚 ',
            [vim.diagnostic.severity.WARN]  = '󰀪 ',
            [vim.diagnostic.severity.INFO]  = '󰋽 ',
            [vim.diagnostic.severity.HINT]  = '󰌶 ',
          },
        } or {},
				virtual_text = {
          source = 'if_many',
          spacing = 2,
        },
			}
			-- End of diagnostics

		end,
		keys = {
			-- Keymappings
			{ '<leader>rn', vim.lsp.buf.rename, 				{ desc = 'Rename'} },
			{ '<leader>ca', vim.lsp.buf.code_action, 		{ desc = 'Code Actions'} },
			{ '<leader>gi', vim.lsp.buf.implementation, { desc = 'Goto Implementation'} },

			{ '<leader>fd', require('telescope.builtin').diagnostics, { desc = 'Find Diagnostics'} },
		},
		dependencies = {
			{
				"mason-org/mason-lspconfig.nvim",
				opts = { ensure_installed = vim.tbl_keys(servers or {}) }
			},
		}
	},
}
