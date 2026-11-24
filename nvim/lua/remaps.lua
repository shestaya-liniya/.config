vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", vim.cmd.write)
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

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

vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action)

-- exit terminal insert mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
