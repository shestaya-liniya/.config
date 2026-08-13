local M = {}

function M.setup()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "cursor"

	local c = {
		bg = "#1A1A1A",
		bg_dark = "#141414",
		bg_alt = "#292929",
		selection = "#303030",

		fg = "#FFFFFF",
		fg_bright = "#FFFFFF",
		fg_dim = "#6D6D6D",
		muted = "#505050",
		border = "#2A2A2A",

		cyan = "#83D6C5",
		blue = "#87C3FF",
		blue2 = "#81A1C1",
		teal = "#81D2CE",
		aqua = "#88C0D0",

		green = "#A8CC7C",
		yellow = "#F8C762",
		yellow2 = "#EBC88D",
		orange = "#EFB080",
		red = "#BF616A",
		pink = "#E394DC",
		purple = "#AAA0FA",
		brown = "#C1808A",

		-- Converted alpha colors
		faded = "#6D6D6D",
		search = "#38474C",

		diff_add = "#2A3427",
		diff_del = "#3A2326",
		diff_change = "#3A3528",
		diff_text = "#38474C",
	}

	local function hi(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	------------------------------------------------------------------
	-- UI
	------------------------------------------------------------------

	hi("Normal", { fg = c.fg, bg = c.bg })
	hi("NormalFloat", { fg = c.fg, bg = c.bg_dark })

	hi("CursorLine", { bg = c.bg_alt })
	hi("CursorColumn", { bg = c.bg_alt })
	hi("ColorColumn", { bg = c.bg_alt })

	hi("Visual", { bg = c.selection })

	hi("LineNr", { fg = c.muted })
	hi("CursorLineNr", { fg = c.fg_bright, bold = true })

	hi("StatusLine", { fg = c.fg, bg = c.bg })
	hi("StatusLineNC", { fg = c.fg_dim, bg = c.bg })

	hi("Pmenu", { fg = c.fg, bg = c.bg_dark })
	hi("PmenuSel", { bg = c.bg_alt })

	hi("FloatBorder", { fg = c.aqua })

	hi("WinSeparator", { fg = c.border })
	hi("VertSplit", { fg = c.border })

	hi("Search", { fg = c.fg_bright, bg = c.search })
	hi("IncSearch", { fg = c.bg, bg = c.yellow })

	hi("MatchParen", { fg = "#FFD602", bold = true })

	hi("Whitespace", { fg = c.muted })
	hi("NonText", { fg = c.muted })

	------------------------------------------------------------------
	-- Syntax
	------------------------------------------------------------------

	hi("Comment", { fg = c.fg_dim, italic = true })

	hi("Constant", { fg = c.faded })
	hi("String", { fg = c.pink })
	hi("Character", { fg = c.pink })

	hi("Number", { fg = c.yellow2 })
	hi("Boolean", { fg = c.faded })
	hi("Float", { fg = c.yellow2 })

	hi("Identifier", { fg = c.fg })
	hi("Function", { fg = c.orange })

	hi("Statement", { fg = c.cyan })
	hi("Keyword", { fg = c.cyan })
	hi("Conditional", { fg = c.cyan })
	hi("Repeat", { fg = c.cyan })
	hi("Operator", { fg = c.cyan })

	hi("PreProc", { fg = c.green })
	hi("Include", { fg = c.green })
	hi("Define", { fg = c.green })

	hi("Type", { fg = c.blue })
	hi("StorageClass", { fg = c.blue })
	hi("Structure", { fg = c.blue })
	hi("Typedef", { fg = c.blue })

	hi("Special", { fg = c.teal })
	hi("Delimiter", { fg = c.fg })
	hi("SpecialChar", { fg = c.fg })

	hi("Todo", { fg = c.yellow, bold = true })

	------------------------------------------------------------------
	-- Diagnostics
	------------------------------------------------------------------

	hi("DiagnosticError", { fg = c.red })
	hi("DiagnosticWarn", { fg = c.yellow })
	hi("DiagnosticInfo", { fg = c.aqua })
	hi("DiagnosticHint", { fg = c.aqua })

	hi("DiagnosticUnderlineError", { underline = true, sp = c.red })
	hi("DiagnosticUnderlineWarn", { underline = true, sp = c.yellow })
	hi("DiagnosticUnderlineInfo", { underline = true, sp = c.aqua })
	hi("DiagnosticUnderlineHint", { underline = true, sp = c.aqua })

	------------------------------------------------------------------
	-- Git
	------------------------------------------------------------------

	hi("DiffAdd", { bg = c.diff_add })
	hi("DiffDelete", { bg = c.diff_del })
	hi("DiffChange", { bg = c.diff_change })
	hi("DiffText", { bg = c.diff_text })

	------------------------------------------------------------------
	-- Treesitter
	------------------------------------------------------------------

	hi("@comment", { link = "Comment" })

	hi("@keyword", { fg = c.cyan })
	hi("@keyword.return", { fg = c.cyan })
	hi("@keyword.function", { fg = c.cyan })

	hi("@function", { fg = c.orange })
	hi("@function.call", { fg = c.orange })
	hi("@function.method", { fg = c.orange })
	hi("@constructor", { fg = c.orange })

	hi("@type", { fg = c.blue })
	hi("@type.builtin", { fg = c.teal })
	hi("@type.definition", { fg = c.blue })

	hi("@variable", { fg = c.fg })
	hi("@variable.member", { fg = c.fg })
	hi("@variable.parameter", { fg = c.yellow, italic = true })

	hi("@property", { fg = c.teal })

	hi("@string", { fg = c.pink })
	hi("@string.escape", { fg = c.fg })

	hi("@number", { fg = c.yellow2 })
	hi("@boolean", { fg = c.green })

	hi("@operator", { fg = c.cyan })

	hi("@punctuation", { fg = c.fg })
	hi("@punctuation.bracket", { fg = "#FFD602" })
	hi("@punctuation.delimiter", { fg = c.fg })

	hi("@tag", { fg = "#FAD075" })
	hi("@attribute", { fg = c.purple, italic = true })

	------------------------------------------------------------------
	-- LSP semantic tokens
	------------------------------------------------------------------

	hi("@lsp.type.parameter", { fg = c.yellow, italic = true })
	hi("@lsp.type.property", { fg = c.teal })
	hi("@lsp.type.enumMember", { fg = c.orange })
	hi("@lsp.type.interface", { fg = c.blue, italic = true })
	hi("@lsp.type.type", { fg = c.blue })
end

return M
