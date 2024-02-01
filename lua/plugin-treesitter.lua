-- Name: tree-sitter
-- Source: https://github.com/tree-sitter/tree-sitter

require("nvim-treesitter.configs").setup({
	--parsers
	autotag = {
		enable = true,
	},

	ensure_installed = { "javascript", "html", "css", "scss", "typescript", "markdown" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
