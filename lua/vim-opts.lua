-- Define a tecla líder (tecla principal para atalhos customizados) como espaço
vim.g.mapleader = " "

vim.cmd("set expandtab")                                        -- Converte tabs em espaços ao pressionar TAB
vim.cmd("set tabstop=2")                                        -- Define que TAB = 2 espaços (p/ exibição)
vim.cmd("set softtabstop=2")                                    -- Define que TAB = 2 espaços (ao editar)
vim.cmd("set shiftwidth=2")                                     -- Define que indentação automática usa 2 espaços
vim.cmd("set autoindent")                                       -- mantém indent da linha anterior
vim.cmd("set smartindent")                                      -- indent inteligente para C-like
vim.keymap.set('n', '<Esc>', ':noh<CR>', { silent = true })     -- Esc limpa highlight
vim.keymap.set('n', '<C-t>', ':tabnew <CR>', {})                -- Abre uma nova aba vazia
vim.keymap.set('n', '<leader>J', ':ToggleTerm <CR>', {})

-- Ativa spell check apenas em markdown, texto e git commits
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text", "gitcommit", "latex" },
  callback = function()
    vim.wo.spell = true
    vim.bo.spelllang = "pt_br,en"
  end,
})


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

vim.wo.number = true                                            -- Adiciona as linhas absolutas
vim.wo.relativenumber = true                                    -- Adiciona linhas relativas (distância da linha atual)
vim.opt.cursorline = true                                       -- Destaca a linha que o cursor está
vim.cmd([[highlight CursorLineNr guifg=#CCFF00]])               -- Define a cor do cursor para #CCFF00
