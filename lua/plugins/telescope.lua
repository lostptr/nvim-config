-- Support for windows...
-- also, dont forget to `scoop install ripgrep` on windows...
local os_name = vim.loop.os_uname().sysname
local windows_build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install'

local actions = require("telescope.actions")

return {
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = os_name == 'Windows' and windows_build or 'make' },
    }
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        defaults = {
          path_display = { "smart" },
          mappings = {
            n = {
              ["d"] = actions.delete_buffer,     -- Delete buffer in normal mode
            },
          }
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }
          }
        }
      }
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end
  }
}
