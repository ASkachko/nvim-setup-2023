-- Info: CSS Language Server Protocal
-- https://github.com/hrsh7th/vscode-langservers-extracted

lspconfig = require("lspconfig")
util = require("lspconfig/util")

require("lspconfig").cssls.setup({
	cmd = { "vscode-css-language-server", "--stdio" },
	filetypes = { "css", "scss" },
	root_dir = util.root_pattern("package.json", ".git"),
	settings = {
		css = {
			validate = true,
		},
		scss = {

			validate = true,
		},
	},
	single_file_support = true,
})
