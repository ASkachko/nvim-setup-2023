-- Item: formatter.nvim
-- Source: https://github.com/mhartington/formatter.nvim

local util = require("formatter.util")
local keymap = vim.api.nvim_set_keymap

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {

		-- Formating for Lua
		lua = {
			require("formatter.filetypes.lua").stylua,
			function()
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},

		-- Formating for CSS
		css = {
			require("formatter.filetypes.css").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--parser",
						parser,
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},

		-- Formating for HTML
		html = {
			require("formatter.filetypes.html").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--parser",
						parser,
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},

		-- Formating for JavaScript
		javascript = {
			require("formatter.filetypes.javascript").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--parser",
						parser,
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},

		-- Formating for JavaScriptReact
		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--parser",
						parser,
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},

		-- Formating for TypeScript
		typescript = {
			require("formatter.filetypes.typescript").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--parser",
						parser,
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},

		-- Formating for TypeScriptReact
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettierd,
			function()
				return {
					exe = "prettierd",
					args = {
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--parser",
						parser,
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

local M = {}

local defaults = require("formatter.defaults")

M.prettierd = util.withl(defaults.prettierd)

return M
