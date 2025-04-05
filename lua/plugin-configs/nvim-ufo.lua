-- TODO: Remove when dropping support for Neovim v0.10
return {
  'kevinhwang91/nvim-ufo',
  --enabled = vim.fn.has 'nvim-0.11' ~= 1,
  dependencies = { { 'kevinhwang91/promise-async', lazy = true } },
  opts = {
    preview = {
      mappings = {
        scrollB = '<C-B>',
        scrollF = '<C-F>',
        scrollU = '<C-U>',
        scrollD = '<C-D>',
      },
    },
    provider_selector = function(_, filetype, buftype)
      local function handleFallbackException(bufnr, err, providerName)
        if type(err) == 'string' and err:match 'UfoFallbackException' then
          return require('ufo').getFolds(bufnr, providerName)
        else
          return require('promise').reject(err)
        end
      end

      return (filetype == '' or buftype == 'nofile') and 'indent' -- only use indent until a file is opened
        or function(bufnr)
          return require('ufo')
            .getFolds(bufnr, 'lsp')
            :catch(function(err)
              return handleFallbackException(bufnr, err, 'treesitter')
            end)
            :catch(function(err)
              return handleFallbackException(bufnr, err, 'indent')
            end)
        end
    end,
  },
}
