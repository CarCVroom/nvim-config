function ColorMypencils(color)
	color = color or "github_dark_default"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
end

ColorMypencils()
