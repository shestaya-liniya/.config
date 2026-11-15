vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>w", vim.cmd.write)

-- lsp go to def/dec
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)

-- exit insert mode on esc in terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })

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

vim.keymap.set("n", "<F2>", "<cmd>UndotreeToggle<CR>", {
	desc = "Toggle UndoTree",
})

vim.keymap.set("n", "<leader>l", function()
	vim.lsp.buf.format({ bufnr = 0 })
end, { desc = "Lint" })
