require("core.lazy")
require("core.options")

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins.themes" },
		{ import = "plugins" },
		{ import = "plugins.lsp" },
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "carbonfox" } },
	-- automatically check for plugin updates
	checker = {
		enabled = false,
	},
	ui = {
		border = "rounded",
	},
})

-- Set vim colorscheme
vim.cmd.colorscheme("carbonfox")
