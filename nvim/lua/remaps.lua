vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", vim.cmd.write)
vim.keymap.set("n", "<leader>q", function()
	vim.cmd(":bprevious | bdelete #")
end)

local function rename()
    local clients = vim.lsp.get_clients({
        bufnr = 0,
        method = "textDocument/rename",
    })

    if #clients == 0 then
        vim.notify("No LSP rename provider available", vim.log.levels.WARN)
        return
    end

    vim.lsp.buf.rename(nil, {
        filter = function(client)
            return client.id == clients[1].id
        end,
    })
end

vim.keymap.set("n", "<leader>r", rename)


vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)

-- exit insert mode on esc in terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })
-- indent after paste
vim.keymap.set("n", "<leader>]", "`[V`]>")
vim.keymap.set("n", "<leader>[", "`[V`]<")

if vim.g.vscode then
	require("vscode-remaps")
else
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
end
