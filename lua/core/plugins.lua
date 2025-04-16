local conform = require 'plugin-configs.conform'
local dapUi = require 'plugin-configs.dap-ui'
local fuzzyFinder = require 'plugin-configs.fuzzy-finder'
local gitsigns = require 'plugin-configs.gitsigns'
local lazyDev = require 'plugin-configs.lazy-dev'
local lspConfig = require 'plugin-configs.lsp-config'
local luvitMeta = require 'plugin-configs.luvit-meta'
local miniNvim = require 'plugin-configs.mini-nvim'
local nvimCmp = require 'plugin-configs.nvim-cmp'
local nvimDap = require 'plugin-configs.nvim-dap'
local obsidian = require 'plugin-configs.obsidian'
local oil = require 'plugin-configs.oil'
local todoComments = require 'plugin-configs.todo-comments'
local tokyoNight = require 'plugin-configs.tokyo-night'
local treesitter = require 'plugin-configs.treesitter'
local whichKey = require 'plugin-configs.which-key'
local nvimUfo = require 'plugin-configs.nvim-ufo'
local lint = require 'plugin-configs.lint'
local autopairs = require 'plugin-configs.autopairs'
local indent = require 'plugin-configs.indent_line'
local typescript_tools = require 'plugin-configs.typescript-tools'
local nightfox = require 'plugin-configs.nightfox'
local inline_diagnostic = require 'plugin-configs.inline-diagnostic'
local auto_session = require 'plugin-configs.auto-session'

return {
  conform,
  dapUi,
  fuzzyFinder,
  gitsigns,
  lazyDev,
  lspConfig,
  luvitMeta,
  miniNvim,
  nvimCmp,
  nvimDap,
  obsidian,
  oil,
  todoComments,
  --tokyoNight,
  treesitter,
  whichKey,
  nvimUfo,
  lint,
  autopairs,
  indent,
  typescript_tools,
  nightfox,
  inline_diagnostic,
  auto_session,
}
