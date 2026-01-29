return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					extra_args = {
						"--single-quote=false", -- aspas duplas
						"--semi=true", -- ponto e vírgula
						"--trailing-comma=es5", -- vírgulas finais
					},
				}),
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.diagnostics.semgrep,
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = {
				"*.js",
				"*.ts",
				"*.jsx",
				"*.tsx",
				"*.json",
				"*.css",
				"*.html",
				"*.yaml",
				"*.lua",
				"*.yml",
				"*.md",
				"*.tex",
				"*.cs",
			},
			callback = function()
				vim.lsp.buf.format({ async = false })
			end,
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
