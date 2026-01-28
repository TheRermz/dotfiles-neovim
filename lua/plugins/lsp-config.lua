return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.diagnostic.config({
				virtual_text = {
					spacing = 4,
				}, -- mostra erro inline
				signs = true, -- mostra W/E na lateral
				underline = true, -- sublinha o erro
				update_in_insert = false, -- não atualiza enquanto digita
				severity_sort = true, -- ordena por severidade
				float = {
					source = "always",
					border = "rounded",
				},
			})
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			-- C
			vim.lsp.config("clangd", { capabilities = capabilities })

			-- CSS
			vim.lsp.config("cssls", { capabilities = capabilities })
			vim.lsp.config("css_variables", { capabilities = capabilities })
			vim.lsp.config("cssmodules_ls", { capabilities = capabilities })

			-- Docker
			vim.lsp.config("docker_compose_language_service", { capabilities = capabilities })
			vim.lsp.config("docker_language_server", { capabilities = capabilities })
			vim.lsp.config("dockerls", { capabilities = capabilities })

			-- Github actions
			vim.lsp.config("gh_actions_ls", { capabilities = capabilities })

			-- HTML
			vim.lsp.config("html", { capabilities = capabilities })

			-- Hydra (YAML)
			vim.lsp.config("hydra_lsp", { capabilities = capabilities })

			-- PHP
			vim.lsp.config("intelephense", { capabilities = capabilities })

			-- JSON
			vim.lsp.config("jsonls", { capabilities = capabilities })

			-- LaTeX
			vim.lsp.config("ltex", { capabilities = capabilities })
			vim.lsp.config("ltex_plus", {
				capabilities = capabilities,
				settings = {
					ltex = {
						language = "pt-BR, en-US",
						additionalRules = {
							enablePickyRules = true,
							motherTongue = "pt-BR",
						},
						enabled = { "markdown", "tex", "latex", "text" },
						dictionary = {
							["pt-BR"] = { "neovim", "treesitter", "lspconfig" },
							["en-US"] = { "Neovim", "TypeScript", "JavaScript" },
						},
					},
				},
			})
			vim.lsp.config("texlab", { capabilities = capabilities })

			-- Markdown
			vim.lsp.config("markdown_oxide", { capabilities = capabilities })
			vim.lsp.config("marksman", { capabilities = capabilities })

			-- C#
			vim.lsp.config("omnisharp", { capabilities = capabilities })

			-- Python
			vim.lsp.config("pylsp", { capabilities = capabilities })

			-- TypeScript / JavaScript
			vim.lsp.config("ts_ls", { capabilities = capabilities })
			vim.lsp.config("eslint", { capabilities = capabilities })

			-- YAML
			vim.lsp.config("yamlls", { capabilities = capabilities })

			-- Keybinds
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
