-- Name: nvim-tree
-- Source: https://github.com/nvim-tree/nvim-tree.lua

require("nvim-tree").setup({
	hijack_cursor = true,
	view = {
		number = true,
		relativenumber = true,
	},
	renderer = {
		highlight_opened_files = "icon",
	},
})
