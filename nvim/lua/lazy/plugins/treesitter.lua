return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "python", "bash", "kotlin", "java", "pascal" })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "python", "bash", "kotlin", "java", "pascal" },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
