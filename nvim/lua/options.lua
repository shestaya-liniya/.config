local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.termguicolors = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.wrap = false

opt.statuscolumn = "%=%l  " -- line number and two spaces after as margin
opt.guicursor = "a:block"
opt.numberwidth = 1

opt.undofile = true
vim.g.netrw_bufsettings = "noma nomod nu rnu nowrap ro nobl"
--vim.o.statusline = "%{fnamemodify(getcwd(), ':t')} %f %m"

vim.diagnostic.config({
	virtual_text = {
		enabled = true,
	},
	underline = true,
})
