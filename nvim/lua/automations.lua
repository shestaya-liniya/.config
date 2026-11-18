-- enter insert mode on terminal enter
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	command = "startinsert",
})

local autosave = vim.loop.new_timer()
autosave:start(
	3000,
	3000,
	vim.schedule_wrap(function()
		if vim.bo.modifiable and vim.bo.modified and vim.fn.bufname() ~= "" then
			vim.cmd("silent! write")
		end
	end)
)
