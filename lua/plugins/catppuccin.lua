return{
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        integrations = {
          rainbow_delimiters = true
        }
      })
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }
}

