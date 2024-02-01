-- Name: telescope
-- Source: https://github.com/nvim-telescope/telescope.nvim

local builtin = require("telescope.builtin")
-- search files, hidden ones
vim.keymap.set("n", "<leader>ff", ':lua require"telescope.builtin".find_files({no_ingore=true, hidden=true})<CR>', {})
vim.keymap.set("n", "<leader>fw", ':lua require"telescope.builtin".live_grep()<CR>', {})
vim.keymap.set("n", "<leader>ftw", ':lua require"telescope.builtin".grep_string()<CR>', {})
vim.keymap.set("n", "<leader>th", ":help telescope.builtin<CR>", {})
