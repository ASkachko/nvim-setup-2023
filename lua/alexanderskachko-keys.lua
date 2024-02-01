-- Info: Custom keymap

-- Fetch keymap function
local map = vim.api.nvim_set_keymap
local keymap = vim.api.nvim_set_keymap

-- change leader key
vim.g.mapleader = " "

-- Map the key Space + e, to run the command :NvimTreeToggle
map("n", "<Space>e", [[:NvimTreeFocus<CR>]], { noremap = true, silent = true })

map("n", "<Space>o", [[:NvimTreeToggle<CR>]], { noremap = true, silent = true })

-- Map the key Space + w, to save the file
map("n", "<Space>w", [[:w<CR>]], { noremap = true, silent = true })

-- Map the key Space + q, to save and quit all files
map("n", "<Space>q", [[:wqa<CR>]], { noremap = true, silent = true })

-- Map the key Space + q, to save and quit all files
map("n", "<Space>jq", [[:q!<CR>]], { noremap = true, silent = true })

-- to pin buffer
map("n", "<Space>bp", [[:BufferLineTogglePin<CR>]], { noremap = true, silent = true })

-- to close all tabs to the right
map("n", "<Space>bcr", [[:BufferLineCloseRight<CR>]], { noremap = true, silent = true })

-- to close all tabs to the left
map("n", "<Space>bcl", [[:BufferLineCloseLeft<CR>]], { noremap = true, silent = true })

-- to close all tabs but current buffer
map("n", "<Space>bca", [[:BufferLineCloseOthers<CR>]], { noremap = true, silent = true })

-- go to the left buffer
map("n", "[b", [[:BufferLineCyclePrev<CR>]], { noremap = true, silent = true })

-- go to the right buffer
map("n", "]b", [[:BufferLineCycleNext<CR>]], { noremap = true, silent = true })

-- move buffer to right
map("n", "]mb", [[:BufferLineMoveNext<CR>]], { noremap = true, silent = true })

-- move buffer to left
map("n", "[mb", [[:BufferLineMovePrev<CR>]], { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ter", '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set("t", "<leader>ter", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

keymap("n", "<Space>f", ":Format<CR>", { noremap = true, silent = true })
keymap("n", "<Space>fw", ":FormatWrite<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*",
	callback = function()
		vim.cmd([[FormatWriteLock]])
	end,
})
