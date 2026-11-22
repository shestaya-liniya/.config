return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "nvim-mini/mini.icons" },
	---@module "fzf-lua"
	---@type fzf-lua.Config|{}
	---@diagnostic disable: missing-fields
	opts = {},
	---@diagnostic enable: missing-fields
	config = function()
		local Fzf = require("fzf-lua")

		vim.keymap.set("n", "<leader>ff", function() Fzf.files() end)
		vim.keymap.set("n", "<leader>fs", function() Fzf.live_grep() end)
		vim.keymap.set("n", "<leader>fo", function() Fzf.oldfiles() end)
		vim.keymap.set("n", "<leader>fb", function() Fzf.buffers() end)

		Fzf.setup({ defaults = { file_icons = false } })
	end
}
