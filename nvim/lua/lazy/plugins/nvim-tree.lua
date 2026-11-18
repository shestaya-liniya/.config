return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"https://github.com/nvim-tree/nvim-web-devicons"
	},
	config = function()
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- optionally enable 24-bit colour
		vim.opt.termguicolors = true

		---@type nvim_tree.config
		local config = {
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
				icons = {
					show = {
						bookmarks = false,
						diagnostics = false,
						file = false,
						folder = false,
						folder_arrow = false,
						git = false,
						modified = false
					}
				},
			},
			filters = {
				dotfiles = false,
			},
		}
		require("nvim-tree").setup(config)
		vim.keymap.set("n", "<leader>e", function()
			vim.cmd("NvimTreeToggle")
		end)

	end
}
