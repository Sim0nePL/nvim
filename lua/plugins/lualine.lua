return {
  'nvim-lualine/lualine.nvim',
	opts = {},
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	init = function()
		require("mini.icons").mock_nvim_web_devicons();
	end
}
