return   {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()

    -- Setup do treesitter (habilita os comandos)
    require'nvim-treesitter'.setup {}

    -- Instala os parsers (só roda uma vez)
    local parsers = {'javascript', 'typescript', 'lua', 'c_sharp', 'markdown', 'latex', 'nginx', 'php', 'python', 'css', 'yaml', 'json', 'bash', 'c', 'dockerfile', 'html', 'mermaid'}
    for _, parser in ipairs(parsers) do
      if not vim.fn.isdirectory(vim.fn.stdpath('data') .. '/site/parser/' .. parser .. '.so') then
        require'nvim-treesitter'.install({parser}):wait()
      end
    end

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

