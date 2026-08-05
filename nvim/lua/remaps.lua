vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>w", vim.cmd.write)

-- lsp go to def/dec
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)

-- exit insert mode on esc in terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })

-- save and run file on space+e
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "sh" },
	callback = function()
		vim.keymap.set("n", "<leader>e", function()
			vim.cmd("write")

			local file = vim.fn.expand("%")
			local ft = vim.bo.filetype

			if ft == "python" then
				vim.cmd("terminal python3 " .. vim.fn.fnameescape(file))
			elseif ft == "sh" then
				vim.cmd("terminal bash " .. vim.fn.fnameescape(file))
			end
		end, {
			buffer = true,
			desc = "Save and run file",
		})
	end,
})

vim.keymap.set("n", "<leader>d", function()
	vim.diagnostic.open_float(0, { scope = "cursor" })
end)

vim.keymap.set("n", "<leader>ff", function()
	vim.cmd("Telescope find_files")
end)
vim.keymap.set("n", "<leader>fo", function()
	vim.cmd("Telescope oldfiles")
end)
vim.keymap.set("n", "<leader>fs", function()
	vim.cmd("Telescope live_grep")
end)

vim.keymap.set("n", "<leader>fb", function()
	vim.cmd("Telescope buffers")
end)
