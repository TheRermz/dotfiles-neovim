# Configuração Neovim

Minha configuração pessoal do Neovim, ainda em desenvolvimento.

## Tutorial de Referência

Seguindo a série **Neovim for Newbs** do TypeCraft:

[Neovim for Newbs - TypeCraft (YouTube)](https://www.youtube.com/watch?v=zHTeCSVAFNY&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn)

## Estrutura

```
~/.config/nvim/
├── init.lua                    # Entry point
├── lua/
│   ├── config/
│   │   └── lazy.lua            # Gerenciador de plugins
│   ├── vim-opts.lua            # Opções e keymaps do vim
│   └── plugins/                # Configurações individuais
│       ├── catppuccin.lua      # Tema
│       ├── lsp-config.lua      # LSP servers
│       ├── telescope.lua       # Fuzzy finder
│       ├── neo-tree.lua        # File explorer
│       ├── treesitter.lua      # Syntax highlighting
│       ├── lualine.lua         # Status line
│       ├── toggleterm.lua      # Terminal integrado
│       └── markdown-preview.lua
└── lazy-lock.json
```

## Plugins

| Plugin | Descrição |
|--------|-----------|
| **lazy.nvim** | Gerenciador de plugins |
| **catppuccin** | Tema (mocha) |
| **nvim-lspconfig** | Configuração LSP |
| **mason.nvim** | Instalador de LSP servers |
| **telescope.nvim** | Fuzzy finder |
| **nvim-treesitter** | Syntax highlighting avançado |
| **neo-tree.nvim** | File explorer |
| **lualine.nvim** | Status line |
| **toggleterm.nvim** | Terminal integrado |
| **markdown-preview.nvim** | Preview de markdown |
| **nvim-web-devicons** | Ícones |

## Keymaps

Leader: `<Space>`

### Geral

| Keymap | Ação |
|--------|------|
| `<Esc>` | Limpa highlight da busca |
| `<C-t>` | Nova tab |
| `<C-n>` | Toggle Neo-tree (file explorer) |
| `<leader>J` | Toggle terminal |

### Telescope

| Keymap | Ação |
|--------|------|
| `<C-p>` | Buscar arquivos |
| `<leader>fg` | Live grep (busca em arquivos) |

### LSP

| Keymap | Ação |
|--------|------|
| `K` | Hover (documentação) |
| `gd` | Go to definition |
| `<leader>ca` | Code action |

### Markdown

| Keymap | Ação |
|--------|------|
| `<leader>mp` | Toggle preview |

## LSP Servers Configurados

- **Lua** - lua_ls
- **TypeScript/JavaScript** - ts_ls, eslint
- **Python** - pylsp
- **C/C++** - clangd
- **C#** - omnisharp
- **PHP** - intelephense
- **HTML/CSS** - html, cssls, cssmodules_ls
- **JSON** - jsonls
- **YAML** - yamlls
    - **Docker** - dockerls, docker_compose_language_service
- **LaTeX** - texlab, ltex (com pt-BR)
    - **Markdown** - marksman, markdown_oxide
    - **GitHub Actions** - gh_actions_ls

## Opções

    - Tabs: 2 espaços
    - Line numbers: absoluto + relativo
- Cursor line highlight (#CCFF00)
    - Spell check: markdown, text, gitcommit, tex (pt-BR + en)
    - Auto-indent on save
