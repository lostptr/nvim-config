-- set tabsize to 4
local tabsize = 2
vim.opt.tabstop = tabsize
vim.opt.shiftwidth = tabsize
vim.opt.softtabstop = tabsize
vim.opt.expandtab = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
-- shows relative on normal, absolute on insert mode
vim.api.nvim_create_autocmd("InsertEnter", { command = [[ set norelativenumber ]] })
vim.api.nvim_create_autocmd("InsertLeave", { command = [[ set relativenumber ]] })

