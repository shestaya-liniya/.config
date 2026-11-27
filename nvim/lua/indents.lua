-- Update listchars
vim.api.nvim_create_autocmd("BufWinEnter", {
	callback = function()
		local indent_symbol = "|"
		local sw = vim.fn.shiftwidth()
		vim.opt.listchars = vim.tbl_deep_extend(
			"force",
			vim.opt_local.listchars:get(),
			{
				--tab = indent_symbol .. (' '):rep(sw - 1),
				leadmultispace = indent_symbol .. (' '):rep(sw - 1)
			}
		)
	end
})
