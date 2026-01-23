-- these match omarchy's default themes
-- https://github.com/basecamp/omarchy/tree/master/themes
local themes = {
  catppuccin = {
    colorscheme = 'catppuccin',
    background = 'dark',
  },
  nord = {
    colorscheme = 'nordfox',
    background = 'dark',
  },
  gruvbox = {
    colorscheme = 'gruvbox',
    background = 'dark',
  },
  kanagawa = {
    colorschema = 'kanagawa',
    background = 'dark',
  },
  tokyonight = {
    colorscheme = 'tokyonight-night',
    background = 'dark',
  },
  rosepine = {
    colorscheme = 'rose-pine-dawn',
    background = 'light',
  },
  ristretto = {
    colorscheme = 'monokai-pro',
    background = 'dark',
    setup = function ()
      require('monokai-pro').setup({
        filter = 'ristretto',
        override = function()
          return {
            NonText = { fg = "#948a8b" },
            MiniIconsGrey = { fg = "#948a8b" },
            MiniIconsRed = { fg = "#fd6883" },
            MiniIconsBlue = { fg = "#85dacc" },
            MiniIconsGreen = { fg = "#adda78" },
            MiniIconsYellow = { fg = "#f9cc6c" },
            MiniIconsOrange = { fg = "#f38d70" },
            MiniIconsPurple = { fg = "#a8a9eb" },
            MiniIconsAzure = { fg = "#a8a9eb" },
            MiniIconsCyan = { fg = "#85dacc" }, -- same value as MiniIconsBlue for consistency
          }
        end,
      })
    end
  },
  everforest = {
    colorscheme = 'everforest',
    background = 'dark',
    setup = function()
      require('everforest').setup({ background = 'soft' })
    end
  },
}

return themes.ristretto
