return {
  'rossjaywill/insights.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('insights').setup()
  end,
}
