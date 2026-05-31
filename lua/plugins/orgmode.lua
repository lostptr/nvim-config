local os_name = vim.loop.os_uname().sysname
if os_name:find('Windows') then
  return {}
else
  return {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    config = function()
      require('orgmode').setup({
        org_agenda_files = '~/orgfiles/**/*',
        org_default_notes_file = '~/orgfiles/refile.org',
      })
     -- Experimental LSP support
     vim.lsp.enable('org')
    end,
  }
end
