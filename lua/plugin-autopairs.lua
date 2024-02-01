-- Name: nvim-autopairs
-- Source: https://github.com/windwp/nvim-autopairs

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
local npairs = require("nvim-autopairs")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

require("nvim-autopairs").setup({
	enable_check_bracket_line = false, -- Don't add pairs if it already has a close pair in the same line
})

npairs.setup({
	fast_wrap = {
		map = "<S-w>",
		chars = { "{", "[", "(", '"', "'" },
		pattern = [=[[%'%"%>%]%)%}%,]]=],
		end_key = "w",
		before_key = "h",
		after_key = "l",
		cursor_pos_before = false,
		keys = "qwertyuiopzxcvbnmasdfghjkl",
		manual_position = true,
		highlight = "Search",
		highlight_grey = "Comment",
	},
})
