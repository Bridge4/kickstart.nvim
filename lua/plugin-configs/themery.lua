return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = {},
      livePreview = {},
      -- add the config here
    }
  end,
}
