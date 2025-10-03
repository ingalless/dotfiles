local themes = {
  nightfox = {
    src = 'https://github.com/EdenEast/nightfox.nvim',
    colorscheme = 'nightfox',
    background = 'dark',
  },
  vague = {
    src = 'https://github.com/vague2k/vague.nvim',
    colorscheme = 'vague',
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
    src = 'https://github.com/sainnhe/everforest',
    colorscheme = 'everforest',
    background = 'dark',
    setup = function()
      vim.g.everforest_background='hard'
    end
  },
}

return themes.everforest_dark
