-- Tab
local tabsize = 2
vim.opt.tabstop = tabsize
vim.opt.shiftwidth = tabsize
vim.opt.softtabstop = tabsize
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Wrap
vim.opt.wrap = false

-- Scroll
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
-- shows relative on normal, absolute on insert mode
vim.api.nvim_create_autocmd("InsertEnter", { command = [[ set norelativenumber ]] })
vim.api.nvim_create_autocmd("InsertLeave", { command = [[ set relativenumber ]] })

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Yanking & Pasting
vim.opt.clipboard = "unnamedplus"

vim.opt.confirm = true

