-- Item: Emmet Language Server
-- https://github.com/olrtg/emmet-language-server

lspconfig = require("lspconfig")
util = require("lspconfig/util")

lspconfig.emmet_language_server.setup({
	filetypes = { "css", "html", "javascript", "javascriptreact", "scss", "typescriptreact" },
	init_options = {
		preferences = {},
		showexpandedabbreviation = "always",
		showabbreviationsuggestions = true,
		showsuggestionsassnippets = false,
		syntaxprofiles = {},
		variables = {},
		excludelanguages = {},
	},
})
