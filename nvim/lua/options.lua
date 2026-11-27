local opt = vim.opt

vim.cmd.colorscheme("retrobox")
vim.cmd.syntax("on")

vim.cmd.packadd("nohlsearch")

-- OPTIONS
opt.relativenumber = true
opt.number = true
opt.termguicolors = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.indentexpr = ""
--opt.smartindent = true
opt.autoindent = true

opt.wrap = false

vim.opt.completeopt = { "menu", "menuone", "noselect" }

opt.undofile = true

vim.diagnostic.config({
	virtual_text = {
		enabled = true,
	},
	underline = true,
})

opt.ignorecase = true

-- execute .nvim.lua in project
vim.o.exrc = true

-- VISUAL
opt.list = true
opt.listchars = {
	tab = "| ",
	leadmultispace = "| ",
	space = "·",
}

vim.api.nvim_set_hl(0, "Normal", {
	bg = "#282828",
})

opt.statuscolumn = "%=%l  " -- line number and two spaces after as margin
opt.guicursor = "a:block"
opt.numberwidth = 1

vim.g.netrw_banner = 0
