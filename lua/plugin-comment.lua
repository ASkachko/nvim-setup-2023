-- Comment.nvim
-- https://github.com/numToStr/Comment.nvim

require("Comment").setup({
	padding = true,
	sticky = true,
	ignore = nil,
	toggler = { line = "<leader>/", block = "gbc" },
	opleader = { line = "<leader>/", block = "gcc" },
	extra = { above = "gcO", below = "gco", eol = "gcA" },
	mappings = { basic = true, extra = true },
	pre_hook = nil,
	post_hook = nil,
})
