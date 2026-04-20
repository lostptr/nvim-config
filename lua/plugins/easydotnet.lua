return {
  "GustavEikaas/easy-dotnet.nvim",
  dependencies = { "nvim-lua/plenary.nvim", 'nvim-telescope/telescope.nvim', },
  config = function()
    require("easy-dotnet").setup()

    -- Keep .NET hints more subtle.
    vim.api.nvim_set_hl(0, "LspCodeLens", { fg = "#717171", italic = true })
  end
}
