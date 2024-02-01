-- Item: Typescript Language Server Protocol
-- https://github.com/typescript-language-server/typescript-language-server

lspconfig = require("lspconfig")
util = require("lspconfig/util")

require("lspconfig").tsserver.setup({
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	hostInfo = { "neovim" },
	root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
	single_file_support = true,
})
