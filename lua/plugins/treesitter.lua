return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	main = 'nvim-treesitter.configs',
	opts = {
		ensure_installed = { 'lua', 'vim' },
		highlight = {
    	enable = true,
		}
	}
}
