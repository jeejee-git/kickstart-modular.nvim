-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        columns = { 'icon' },
        keymaps = {
          ['<C-k>'] = false,
          ['<C-j>'] = false,
          ['<M-h>'] = 'actions.select_split',
          ['<BS>'] = 'actions.parent',
          ['<C-t>'] = 'actions.toggle_trash',
        },
        view_options = {
          show_hidden = true,
        },
        watch_for_changes = true,
        delete_to_trash = true,
      }

      -- Open parent directory in current window
      vim.keymap.set('n', '\\', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
}
