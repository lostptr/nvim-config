return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      event_handlers = {
        {
          event = 'vim_buffer_enter',
          handler = function()
            if vim.bo.filetype == 'neo-tree' then
              vim.cmd('setlocal nonumber')
            end
          end
        },
      },
    },
    lazy = false,
  }
}
