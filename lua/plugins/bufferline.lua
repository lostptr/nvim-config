return {
  'akinsho/bufferline.nvim',
  version = "*",
  -- dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "left",
        }
      },
      --separator_style = "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
      -- separator_style = "slant",
      show_close_icon = false,
      show_buffer_close_icons = false,
    }
  },
  config = function(_, opts)
    vim.opt.termguicolors = true
    require("bufferline").setup(opts)
  end
}
