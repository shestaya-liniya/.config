vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", vim.cmd.write)
vim.keymap.set("n", "<leader>q", function()
	vim.cmd(":bprevious | bdelete #")
end)

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)

-- indent after paste
vim.keymap.set("n", "<leader>]", "`[V`]>")
vim.keymap.set("n", "<leader>[", "`[V`]<")

vim.keymap.set("n", "<leader>d", function()
	vim.diagnostic.open_float(0, { scope = "cursor" })
end)
vim.keymap.set("n", "<leader>l", function()
	vim.lsp.buf.format({ bufnr = 0 })
end, { desc = "Lint" })

vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, {
	desc = "Code Action"
})
-- tabs
vim.keymap.set("n", "<leader>tt", function()
	vim.cmd("tabnew")
end)
vim.keymap.set("n", "<leader>ts", function()
	vim.cmd("tab split")
end)
vim.keymap.set("n", "<leader>tc", function()
	vim.cmd("tabclose")
end)

vim.keymap.set("n", "<F2>", "<cmd>UndotreeToggle<CR>", {
	desc = "Toggle UndoTree",
})
