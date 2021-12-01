local utils = require('utils')

-- utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape
utils.map('n', '<leader>bk', '<cmd>:bdelete<CR>')
utils.map('n', '<leader>bK', '<cmd>:%bdelete|e#<CR>')


-- utils.map('n', '<C-j>', '<cmd>:cnext<CR>')
-- utils.map('n', '<C-k>', '<cmd>:cprevious<CR>')
-- utils.map('n', '<C-l>', '<cmd>:cprevious<CR>')
