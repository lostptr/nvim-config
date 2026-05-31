local config_path = vim.fn.stdpath('config')

vim.api.nvim_create_user_command(
  'EditConfig',
  function()
    vim.cmd('cd ' .. config_path)
    print('Opened config at ' .. config_path)
  end,
  { nargs = 0 }
)

vim.api.nvim_create_user_command(
  'LoadSession',
  function()
    vim.cmd('SessionManager load_session')
  end,
  { nargs = 0 }
)

vim.api.nvim_create_user_command(
  'SaveSession',
  function()
    vim.cmd('SessionManager save_current_session')
  end,
  { nargs = 0 }
)
