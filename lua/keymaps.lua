-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<A-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<A-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<A-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<A-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--  Use ALT+<hjkl> to move windows around
vim.keymap.set('n', '<A-H>', '<C-w>H', { desc = 'Move pane to left' })
vim.keymap.set('n', '<A-L>', '<C-w>L', { desc = 'Move pane to right' })
vim.keymap.set('n', '<A-J>', '<C-w>J', { desc = 'Move pane to down' })
vim.keymap.set('n', '<A-K>', '<C-w>K', { desc = 'Move pane to up' })
--
--  Use ALT+CTRL+<hjkl> to resize windows
vim.keymap.set('n', '<C-A-h>', ':vertical resize -2<CR>', { desc = 'Decrease pane width' })
vim.keymap.set('n', '<C-A-l>', ':vertical resize +2<CR>', { desc = 'Increase pane width' })
vim.keymap.set('n', '<C-A-j>', ':resize +2<CR>', { desc = 'Increase pane height' })
vim.keymap.set('n', '<C-A-k>', ':resize -2<CR>', { desc = 'Decrease pane height' })

-- Navigate buffers
--
-- Navigate buffers, but only if not in oil.nvim buffer
vim.keymap.set('n', '<S-l>', function()
  if vim.bo.filetype ~= 'oil' then
    vim.cmd 'bnext'
  end
end, { desc = 'Go to next buffer' })
--
vim.keymap.set('n', '<S-h>', function()
  if vim.bo.filetype ~= 'oil' then
    vim.cmd 'bprevious'
  end
end, { desc = 'Go to previous buffer' })

-- Write/Delete buffer
vim.keymap.set('n', '<C-q>', ':close<CR>', { desc = 'Close current window' })
vim.keymap.set('n', '<C-c>', ':bdelete<CR>', { desc = 'Delete current buffer' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right' })

-- Move lines up and down
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv-gv", { desc = 'Move text up' })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv-gv", { desc = 'Move text down' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Stop auto comment-prefixing newlines
vim.api.nvim_create_autocmd('BufEnter', {
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions - { 'c', 'r', 'o' }
  end,
})

-- Configure commenting for C/C++ filetype
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp' },
  callback = function()
    vim.bo.commentstring = '// %s'
  end,
})
