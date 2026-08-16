require'nvim-treesitter.configs'.setup {
ensure_installed = { "c", "lua", "rust", "javascript"},
sync_install = false,

auto_install = true,

-- If you need to change the installation directory of the parsers (see -> Advanced Setup) parser_install_dir = "/some/path/to/store/parsers", Remember to run vim.opt.runtimepath:appe
	highlight = {
-- 	`false` will disable the whole extension
		enable = true,
	--
--	NOTE: these are the names of the parsers and not the filetype. (for example if you want to disable highlighting for the `tex filetype, you need to include latex in this list as this the name of the parser)
	-- list of language that will be disabled
		additional_vim_regex_highligthing = false,
	},
}
