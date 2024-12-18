-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  init = function()
    vim.g.mkdp_filetypes = { 'markdown' }
    vim.g.mkdp_theme = 'light'
  end,
  ft = { 'markdown' },
}
