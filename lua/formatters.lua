lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.py", "*.lua", "*.ts", "*.js", "*.tsx", "*.jsx", "*.c", "*.cpp", "*.h", "*.sh" }
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "black", filetypes = { "python" } },
	{ command = "stylua", filetypes = { "lua" } },
	{
		command = "prettier",
		filetypes = {
			"javascript",
			"javascriptreact",
			"javascript.jsx",
			"typescript",
			"typescriptreact",
			"typescript.tsx",
		},
	},
	{ command = "clang-format", filetypes = { "c", "cpp" } },
	{ command = "shfmt", filetypes = { "sh", "zsh", "bash" } },
})
