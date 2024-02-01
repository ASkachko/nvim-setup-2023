-- Item: Personal Nvim configs
-- diable tree for neotree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- better colors
vim.opt.termguicolors = true
vim.o.autoindent = false
vim.o.smartindent = false
vim.o.smarttab = false
vim.o.cindent = false

vim.opt.fillchars = { eob = " " }

-- set line numbers
vim.cmd("set number")

-- set relative line numbers

vim.cmd("set relativenumber")
