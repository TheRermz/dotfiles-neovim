return{
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.diagnostic.config({
        virtual_text = {
          spacing = 4,
        },           -- mostra erro inline
        signs = true,                  -- mostra W/E na lateral
        underline = true,              -- sublinha o erro
        update_in_insert = false,      -- não atualiza enquanto digita
        severity_sort = true,          -- ordena por severidade
        float = {
          source = 'always',
          border = 'rounded'
        },
      })
      vim.lsp.config('lua_ls',{
        settings ={
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            },
          }
        }
      })

      -- C
      vim.lsp.config('clangd', {})

      -- CSS
      vim.lsp.config('cssls', {})
      vim.lsp.config('css_variables', {})
      vim.lsp.config('cssmodules_ls', {})

      -- Docker
      vim.lsp.config('docker_compose_language_service', {})
      vim.lsp.config('docker_language_server', {})
      vim.lsp.config('dockerls', {})

      -- Github actions
      vim.lsp.config('gh_actions_ls', {})

      -- HTML
      vim.lsp.config('html', {})

      -- Hydra (YAML)
      vim.lsp.config('hydra_lsp', {})

      -- PHP
      vim.lsp.config('intelephense', {})

      -- JSON
      vim.lsp.config('jsonls', {})

      -- LaTeX
      vim.lsp.config('ltex', {})
      vim.lsp.config('ltex_plus', {})
      vim.lsp.config('texlab', {})

      -- Markdown
      vim.lsp.config('markdown_oxide', {})
      vim.lsp.config('marksman', {})

      -- C#
      vim.lsp.config('omnisharp', {})

      -- Python
      vim.lsp.config('pylsp', {})

      -- TypeScript / JavaScript
      vim.lsp.config('ts_ls', {})
      vim.lsp.config('eslint', {})

      -- YAML
      vim.lsp.config('yamlls', {})

      -- Keybinds
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
