-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'NLKNguyen/papercolor-theme',
  lazy = false,
  priority = 1000,
  config = function()
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function()
        vim.o.background = 'light'
        vim.cmd 'colorscheme PaperColor'
      end,
      once = true,
    })
  end,
}
