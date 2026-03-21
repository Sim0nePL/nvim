return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },

	init = function()
		-- Enable Treesitter on FileType Event
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local bufnr = args.buf
				local ft = vim.bo[bufnr].filetype

				local lang = vim.treesitter.language.get_lang(ft)
				-- Check is language accessible
				if lang and vim.treesitter.query.get(lang, "highlights") then
					vim.treesitter.start(bufnr)
				end
			end,
		})
	end,
}
