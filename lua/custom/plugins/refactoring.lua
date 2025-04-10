-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('refactoring').setup {
      vim.keymap.set({ 'n', 'x' }, '<leader>rr', function()
        require('refactoring').select_refactor()
      end),
      -- Note that not all refactor support both normal and visual mode
    }
  end,
  lazy = false,
  opts = {},
}
