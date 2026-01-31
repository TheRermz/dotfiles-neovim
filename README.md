# Configuração Neovim

Minha configuração pessoal do Neovim, ainda em desenvolvimento.

## Features

- Dashboard customizado com ASCII art
- LSP completo com autocompletion e snippets
- Formatação automática ao salvar
- Syntax highlighting avançado com Treesitter
- Rainbow delimiters (parênteses coloridos)
- Auto-close para parênteses e tags HTML/JSX
- File explorer (Neo-tree) e fuzzy finder (Telescope)
- Terminal integrado
- Preview de Markdown
- Spell check em PT-BR e EN
- Tema Catppuccin Mocha
- Status line customizada (Lualine)

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
│       ├── markdown-preview.lua
│       ├── completions.lua     # Autocompletion (nvim-cmp + LuaSnip)
│       ├── none-ls.lua         # Formatação e linting
│       ├── autopairs.lua       # Auto fecha parênteses
│       ├── autoclose-tag.lua   # Auto fecha tags HTML/JSX
│       ├── rainbow-delimiters.lua # Colore delimitadores
│       └── alpha-nvim.lua      # Dashboard inicial
└── lazy-lock.json
```

## Plugins

| Plugin                      | Descrição                                |
| --------------------------- | ---------------------------------------- |
| **lazy.nvim**               | Gerenciador de plugins                   |
| **catppuccin**              | Tema (mocha)                             |
| **nvim-lspconfig**          | Configuração LSP                         |
| **mason.nvim**              | Instalador de LSP servers                |
| **telescope.nvim**          | Fuzzy finder                             |
| **nvim-treesitter**         | Syntax highlighting avançado             |
| **neo-tree.nvim**           | File explorer                            |
| **lualine.nvim**            | Status line                              |
| **toggleterm.nvim**         | Terminal integrado                       |
| **markdown-preview.nvim**   | Preview de markdown                      |
| **nvim-web-devicons**       | Ícones                                   |
| **nvim-cmp**                | Autocompletion engine                    |
| **LuaSnip**                 | Snippet engine                           |
| **friendly-snippets**       | Coleção de snippets                      |
| **none-ls.nvim**            | Formatação e linting (null-ls)           |
| **nvim-autopairs**          | Auto fecha parênteses, colchetes, etc    |
| **nvim-ts-autotag**         | Auto fecha e renomeia tags HTML/JSX      |
| **rainbow-delimiters.nvim** | Colore delimitadores em cores diferentes |
| **alpha-nvim**              | Dashboard/tela inicial customizada       |

## Keymaps

Leader: `<Space>`

### Geral

| Keymap      | Ação                            |
| ----------- | ------------------------------- |
| `<Esc>`     | Limpa highlight da busca        |
| `<C-t>`     | Nova tab                        |
| `<C-n>`     | Toggle Neo-tree (file explorer) |
| `<leader>J` | Toggle terminal                 |

### Telescope

| Keymap       | Ação                          |
| ------------ | ----------------------------- |
| `<C-p>`      | Buscar arquivos               |
| `<leader>fg` | Live grep (busca em arquivos) |

### LSP

| Keymap       | Ação                     |
| ------------ | ------------------------ |
| `K`          | Hover (documentação)     |
| `gd`         | Go to definition         |
| `<leader>ca` | Code action              |
| `<leader>gf` | Formatar código (manual) |
| `gr`         | Go to references         |
| `gD`         | Go to declaration        |
| `gi`         | Go to implementation     |
| `<leader>rn` | Rename symbol            |
| `<leader>D`  | Go to type definition    |

### Autocompletion (nvim-cmp)

| Keymap      | Ação                      |
| ----------- | ------------------------- |
| `<C-Space>` | Aciona autocompletion     |
| `<C-b>`     | Scroll docs para cima     |
| `<C-f>`     | Scroll docs para baixo    |
| `<C-e>`     | Aborta/fecha completion   |
| `<CR>`      | Confirma item selecionado |

### Markdown

| Keymap       | Ação           |
| ------------ | -------------- |
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

## Formatação e Linting (none-ls)

### Formatadores

- **Lua** - stylua
- **JavaScript/TypeScript/JSX/TSX** - prettier (aspas duplas, ponto e vírgula, vírgulas ES5)
- **Python** - black
- **JSON/CSS/HTML/YAML/Markdown** - prettier

### Linters

- **JavaScript/TypeScript** - eslint_d
- **Semgrep** - análise estática de segurança

### Auto-formatação

Formatação automática ao salvar ativa para:

- `*.js`, `*.ts`, `*.jsx`, `*.tsx`
- `*.json`, `*.css`, `*.html`
- `*.yaml`, `*.yml`, `*.md`
- `*.lua`, `*.tex`, `*.cs`

## Opções

- **Tabs**: 2 espaços
- **Line numbers**: absoluto + relativo
- **Cursor line highlight**: #CCFF00
- **Spell check**: markdown, text, gitcommit, tex (pt-BR + en)
- **Auto-indent**: smartindent ativo
- **Line wrap**: quebra em palavras inteiras com breakindent

### Comentário do Autor

> Esse projeto foi bem legal, principalmente seguindo o guia e dicas do TypeCraft.  
> Sinta-se a vontade para fazer um fork e brincar com suas configurações.  
> Uma última coisa  
> I USE ARCH BTW
