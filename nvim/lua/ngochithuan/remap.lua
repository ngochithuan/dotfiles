vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Yank into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>c', '"+y') -- yank motion
vim.keymap.set({'n', 'v'}, '<leader>C', '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>x', '"+d') -- delete motion
vim.keymap.set({'n', 'v'}, '<leader>X', '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set('n', '<leader>v', '"+p')  -- paste after cursor
vim.keymap.set('n', '<leader>V', '"+P')  -- paste before cursor



