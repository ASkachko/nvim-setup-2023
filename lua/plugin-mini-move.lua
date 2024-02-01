-- Name: mini.move
-- Source: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-move.md

require("mini.move").setup({

	mappings = {
		-- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
		left = "<S-h>",
		right = "<S-l>",
		down = "<S-j>",
		up = "<S-k>",

		-- Move current line in Normal mode
		line_left = "<S-h>",
		line_right = "<S-l>",
		line_down = "<S-j>",
		line_up = "<S-k>",
	},
})
