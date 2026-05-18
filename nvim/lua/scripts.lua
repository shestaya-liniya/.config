local function get_recent_dirs()
	local counts = {}
	local dirs = {}

	for _, file in ipairs(vim.v.oldfiles) do
		local dir = vim.fn.fnamemodify(file, ":p:h")

		if vim.fn.isdirectory(dir) == 1 then
			counts[dir] = (counts[dir] or 0) + 1
		end
	end

	for dir, count in pairs(counts) do
		table.insert(dirs, {
			path = dir,
			count = count,
		})
	end

	table.sort(dirs, function(a, b)
		return a.count > b.count
	end)

	local result = {}

	for _, item in ipairs(dirs) do
		table.insert(result, item.path)
	end

	return result
end

vim.api.nvim_create_user_command("Gtp", function(opts)
	local dir = vim.fn.fnameescape(opts.args)

	vim.cmd("cd " .. dir)
	vim.cmd("Explore " .. dir)
end, {
	nargs = 1,
	complete = function()
		return get_recent_dirs()
	end,
})
