return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local Ts = require("nvim-treesitter")
		local langs = {
			"python",
			"bash",
			"java",
			"pascal",
			"lua",
			-- web
			"javascript",
			"tsx",
			"html",
			"css"
		}

		Ts.install(langs)

		-- Function to request a parser for a buffer and if it exist turn on treesitter
		-- source: https://github.com/tjdevries nvim config
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local bufnr = args.buf
				local ok, parser = pcall(vim.treesitter.get_parser, bufnr)
				if not ok or not parser then
					return
				end
				pcall(vim.treesitter.start)

				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})

	end,
}
