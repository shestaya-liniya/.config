vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Rex)

-- lsp go to def/dec
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)

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

-- telescope
vim.keymap.set("n", "<leader>tf", function()
	vim.cmd("Telescope find_files")
end)
vim.keymap.set("n", "<leader>to", function()
	vim.cmd("Telescope oldfiles")
end)
vim.keymap.set("n", "<leader>ts", function()
	vim.cmd("Telescope symbols")
end)

-- windows
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
