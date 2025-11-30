return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    options = {
      transparent = true,
			styles = {
				comments = 'italic',
				keywords = 'bold',
				types = 'italic,bold',
			},
    }
  },
  init = function()
    vim.cmd([[colorscheme carbonfox]])
		vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
  end
}
