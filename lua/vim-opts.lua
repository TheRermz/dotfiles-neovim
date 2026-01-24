vim.g.mapleader = " "

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set autoindent")    -- mantém indent da linha anterior
vim.cmd("set smartindent")   -- indent inteligente para C-like

-- Auto-indenta ao salvar
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { 
		"*.js", "*.ts", "*.lua", "*.cs", "*.md", "*.tex", 
		"*.conf", "*.php", "*.py", "*.css", "*.yaml", "*.yml", 
		"*.json", "*.sh", "*.c", "*.h", "Dockerfile", "*.html", 
		"*.mermaid", "*.jsx", "*.tsx"
	},
	callback = function()
		local cursor_pos = vim.api.nvim_win_get_cursor(0)
		vim.cmd("normal! gg=G")  -- indenta tudo e volta pro cursor
		vim.api.nvim_win_set_cursor(0, cursor_pos)
	end,
})
