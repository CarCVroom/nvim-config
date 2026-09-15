function ColorMypencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
	vim.api.nvim_set_hl(0, "@variable", { fg = "#D6F7FF" })
	vim.api.nvim_set_hl(0, "@variable.parameter", { fg = "#D6F7FF" })
end

ColorMypencils()
