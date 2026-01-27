return {
  'HiPhish/rainbow-delimiters.nvim',
  config = function()
    local rainbow_delimiters = require('rainbow-delimiters')

    require('rainbow-delimiters.setup').setup({
      strategy = {
        [''] = rainbow_delimiters.strategy['global'],
      },
      query = {
        [''] = 'rainbow-delimiters',
        javascript = 'rainbow-parens',
        typescript = 'rainbow-parens',
        tsx = 'rainbow-parens',
        jsx = 'rainbow-parens',
      },
      highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
      },
    })
  end
}
