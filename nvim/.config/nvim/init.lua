require 'user.options'
local theme = require 'user.theme'

vim.cmd ':hi StatusLine guibg=NONE'

vim.pack.add {
  { src = theme.src },
  { src = 'https://github.com/stevearc/oil.nvim' },
  { src = 'https://github.com/echasnovski/mini.pairs' },
  { src = 'https://github.com/echasnovski/mini.statusline' },
  { src = 'https://github.com/echasnovski/mini.extra' },
  { src = 'https://github.com/echasnovski/mini.surround' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
  { src = 'https://github.com/stevearc/conform.nvim' },
  { src = 'https://github.com/tpope/vim-sleuth' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim' },
  { src = 'https://github.com/saghen/blink.cmp', version = 'v1.6.0' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' },
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
}

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function(args)
    require('conform').format { bufnr = args.buf }
  end,
})

require('oil').setup {
  view_options = {
    show_hidden = true,
  },
}
-- mini
require('mini.pairs').setup()
require('mini.surround').setup()
require('mini.extra').setup()
require('mini.statusline').setup {
  use_icons = true,
}

---@diagnostic disable-next-line: missing-fields
require('nvim-treesitter.configs').setup {
  auto_install = false,
  ensure_installed = { 'typescript', 'javascript', 'lua' },
  highlight = { enable = true },
}
require('conform').setup {
  formatters_by_ft = {
    typescript = { 'prettier' },
    javascript = { 'prettier' },
    markdown = { 'prettier' },
    lua = { 'stylua' },
  },
}
require('blink.cmp').setup {
  keymap = { preset = 'default' },
  sources = {
    default = { 'lsp', 'path', 'buffer' },
  },
  appearance = {
    nerd_font_variant = 'mono',
  },
  signature = { enabled = true },
  fuzzy = { implementation = 'prefer_rust_with_warning', prebuilt_binaries = { force_version = 'v1.6.0' } },
}
require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}

vim.lsp.enable { 'lua_ls', 'ts_ls', 'astro', 'mdx' }
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
      },
    },
  },
})

if theme.setup then
  theme.setup()
end
vim.cmd([[set bg=]] .. theme.background)
vim.cmd([[colorscheme ]] .. theme.colorscheme)
vim.cmd [[set completeopt+=menuone,noselect,popup]]

require 'user.keymaps'

-- load environment overrides
local success, overrides = pcall(require, 'user.overrides')
if success then
  overrides()
end
