return {
  {
    "neanias/everforest-nvim",
    name = "everforest",
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins

    config = function()
      local options = {}
      if not vim.g.neovide then
        options = {
          transparent_background_level = 1,
        }
      end
      require("everforest").setup(options)

      vim.o.background = "dark"
      vim.cmd.colorscheme("everforest")
    end,
  }
}
