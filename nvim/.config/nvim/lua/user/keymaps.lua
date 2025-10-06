vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Re-source config
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- LSP
vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'grr', function()
  require('mini.extra').pickers.lsp { scope = 'references' }
end)

-- MiniPick
vim.keymap.set('n', '<leader>sf', ':Pick files<CR>')
vim.keymap.set('n', '<leader>sh', ':Pick help<CR>')
vim.keymap.set('n', '<leader>sg', ':Pick grep_live<CR>')
vim.keymap.set('n', '<leader>sd', ':Pick diagnostic<CR>')
vim.keymap.set('n', '<leader><leader>', ':Pick buffers<CR>')

-- Browse files
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open file explorer in current directory' })

-- Windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
