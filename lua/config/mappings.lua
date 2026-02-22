local defaults = { noremap = true, silent = true }

vim.keymap.set('i', 'jk', '<esc>', defaults)

vim.keymap.set('n', 'H', '_', defaults)
vim.keymap.set('n', 'L', '$', defaults)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Neotree
vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { silent = true })

-- Resizing windows
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { silent = true })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { silent = true })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { silent = true })

-- Terminal
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>', defaults)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', defaults)

-- Lsp
vim.keymap.set('n', '<leader><space>', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<A-S-f>', vim.lsp.buf.format, {})

