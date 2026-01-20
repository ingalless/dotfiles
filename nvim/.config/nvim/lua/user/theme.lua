local themes = {
  catppuccin = {
    src = 'https://github.com/catppuccin/nvim',
    colorscheme = 'catppuccin-frappe',
    background = 'dark',
  },
  gruvbox = {
    src = 'https://github.com/ellisonleao/gruvbox.nvim',
    colorscheme = 'gruvbox',
    background = 'light',
  },
  solarized = {
    src = 'https://github.com/shaunsingh/solarized.nvim',
    colorscheme = 'solarized',
    background = 'light',
  },
  nightfox = {
    src = 'https://github.com/EdenEast/nightfox.nvim',
    colorscheme = 'nightfox',
    background = 'dark',
  },
  everforest_light = {
    src = 'https://github.com/sainnhe/everforest',
    colorscheme = 'everforest',
    background = 'light',
    setup = function()
      vim.g.everforest_background='soft'
    end
  },
  everforest_dark = {
    src = 'https://github.com/neanias/everforest',
    colorscheme = 'everforest',
    background = 'dark',
    setup = function()
      require'everforest'.setup({ background = 'soft' })
    end
  },
}

return themes.catppuccin
