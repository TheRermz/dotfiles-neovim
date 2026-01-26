return   {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()

    -- Setup do treesitter (habilita os comandos)
    require'nvim-treesitter'.setup {
      install_dir = vim.fn.stdpath('data') .. '/site'
    }

    require'nvim-treesitter'.install({
      'javascript', 'typescript', 'lua', 'c_sharp', 'markdown',
      'latex', 'nginx', 'php', 'python', 'css', 'yaml', 'json',
      'bash', 'c', 'dockerfile', 'html', 'mermaid'
    })

    -- Highlight automático
    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        'javascript', 'typescript', 'lua', 'c_sharp', 'markdown', 'tex',
        'nginx', 'php', 'py', 'css', 'yaml', 'json', 'sh', 'c',
        'dockerfile', 'html', 'mermaid'
      },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end
}

