return {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
    -- Enable italics if you like
    vim.g.gruvbox_material_enable_italic = false

    -- Enable transparency
    vim.g.gruvbox_material_transparent_background = 1

    -- Load the colorscheme
    vim.cmd.colorscheme 'gruvbox-material'

    -- Ensure background is cleared (optional, but helps in some terminals)
    -- vim.cmd [[
    --   highlight Normal guibg=none
    --   highlight NormalNC guibg=none
    --   highlight SignColumn guibg=none
    --   highlight LineNr guibg=none
    --   highlight EndOfBuffer guibg=none
    -- ]]
  end,
}
