local opt = vim.opt

vim.cmd.colorscheme("retrobox")

opt.relativenumber = true
opt.number = true
opt.termguicolors = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.wrap = false
opt.list = true
vim.opt.listchars = {
	tab = "| ",
	space = "·"
}
vim.api.nvim_set_hl(0, "Normal", {
    bg = "#303030",
})

opt.statuscolumn = "%=%l  " -- line number and two spaces after as margin
opt.guicursor = "a:block"
opt.numberwidth = 1

opt.undofile = true
vim.g.netrw_bufsettings = "noma nomod nu rnu nowrap ro nobl"

vim.diagnostic.config({
	virtual_text = {
		enabled = true,
	},
	underline = true,
})

vim.cmd.packadd("nohlsearch")
