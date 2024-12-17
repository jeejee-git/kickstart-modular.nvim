-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = function()
    -- Default options:
    require('gruvbox').setup {
      transparent_mode = true,
    }
    vim.cmd 'colorscheme gruvbox'
  end,
}