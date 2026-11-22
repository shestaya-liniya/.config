return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		local HpUi = require("harpoon.ui")
		local HpMark = require("harpoon.mark")

		vim.keymap.set("n", "<leader>hh", function() HpUi.toggle_quick_menu() end)
		vim.keymap.set("n", "<leader>ha", function() HpMark.add_file() end)
	end
}
