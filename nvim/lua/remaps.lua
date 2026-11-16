vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<leader>w", vim.cmd.write)

-- lsp go to def/dec
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)

-- exit insert mode on esc in terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })

-- diagnostic and code action
vim.keymap.set("n", "<leader>d", function()
	vim.diagnostic.open_float(0, { scope = "cursor" })
end)
vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, {
    desc = "Code Action"
})

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
vim.keymap.set("n", "<C-h>", function()
	vim.cmd("1tabnext")
end)
vim.keymap.set("n", "<C-j>", function()
	vim.cmd("2tabnext")
end)
vim.keymap.set("n", "<C-k>", function()
	vim.cmd("3tabnext")
end)
vim.keymap.set("n", "<C-l>", function()
	vim.cmd("4tabnext")
end)
