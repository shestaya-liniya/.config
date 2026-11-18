return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" }
					}
				}
			}
		})

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		vim.lsp.config("html", {
			filetypes = { "html", "javascriptreact", "typescriptreact" },
			capabilities = capabilities
		})

		vim.lsp.enable({ "tsc", "pyright", "bashls", "lua_ls", "cssls", "eslint", "html", })

		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('my.lsp', {}),
			callback = function(ev)
				local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))

				if client:supports_method('textDocument/completion') then
					vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
					vim.keymap.set("i", "<C-space>", vim.lsp.completion.get, { desc = "trigger autocompletion" })
				end
				--[[
				-- Auto-format ("lint") on save.
				-- Usually not needed if server supports "textDocument/willSaveWaitUntil".
				if not client:supports_method('textDocument/willSaveWaitUntil')
					and client:supports_method('textDocument/formatting') then
				  vim.api.nvim_create_autocmd('BufWritePre', {
					group = vim.api.nvim_create_augroup('my.lsp', {clear=false}),
					buffer = ev.buf,
					callback = function()
					  vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
					end,
				  })
				end
				]]
			end
		})
	end,
}
