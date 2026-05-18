vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)
vim.keymap.set("n", "<leader>f", function()
	vim.cmd("Telescope find_files")
end)

-- exit insert mode on esc in terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })

-- save and run python file on space+e
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.keymap.set("n", "<leader>e", function()
			vim.cmd("write")

			local file = vim.fn.expand("%")

			vim.cmd("terminal python3 " .. file)
		end, {
			buffer = true,
			desc = "Save and run Python file",
		})
	end,
})

-- diagnostic
vim.keymap.set("n", "<leader>d", function()
	vim.diagnostic.open_float(0, { scope = "cursor" })
end)
