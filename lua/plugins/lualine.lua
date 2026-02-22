return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = { theme = 'everforest' },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = { 'encoding', 'filetype' },
      lualine_y = { 'lsp_status' },
      lualine_z = { 'location' }
    },
  }
}
