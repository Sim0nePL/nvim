return {
	'nvim-telescope/telescope.nvim',
	tag = 'v0.2.0',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-ui-select.nvim'
	},
	keys = {
		{ '<leader>ff', require('telescope.builtin').find_files, mode = 'n', { desc = "Telescope find files" } },
		{ '<leader>fg', require('telescope.builtin').live_grep,  mode = 'n', { desc = "Telescope live grep" } },
		{ '<leader>fb', require('telescope.builtin').buffers,    mode = 'n', { desc = "Telescope buffers" } },
		{ '<leader>fh', require('telescope.builtin').help_tags,  mode = 'n', { desc = "Telescope help tags" } },
	},
	opts = {
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown {}
			}
		}
	},
	init = function()
		require("telescope").load_extension("ui-select")
	end
}
