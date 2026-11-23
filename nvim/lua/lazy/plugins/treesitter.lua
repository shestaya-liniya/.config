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
			"html",
			"css"
		}

		Ts.install(langs)

		vim.api.nvim_create_autocmd('FileType', {
		  pattern = langs,
		  callback = function()
			-- syntax highlighting, provided by Neovim
			vim.treesitter.start()
			-- folds, provided by Neovim
			--vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
			--vim.wo.foldmethod = 'expr'
			-- indentation, provided by nvim-treesitter
			vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		  end,
		})

	end,
}
