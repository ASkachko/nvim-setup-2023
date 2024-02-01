-- Name: lspsaga.nvim
-- Source: https://nvimdev.github.io/lspsaga/

require("lspsaga").setup({
	diagnostic = {
		extend_relatedInformation = false,
		keys = {
			exec_action = "<CR>",
		},
	},
})

-- keymaps

local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-S-l>", "<Cmd> :Lspsaga diagnostic_jump_next <CR>", { noremap = true, silent = true })
keymap("n", "<C-S-h>", "<Cmd> :Lspsaga diagnostic_jump_prev <CR>", { noremap = true, silent = true })
-- keymap("n", "<C-S-j>", "<Cmd> :Lspsaga scroll_preview <CR>", { noremap = true, silent = true })
