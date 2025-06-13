local themes = {
  dark = {
    pkg = 'EdenEast/nightfox.nvim',
    init = function()
      vim.o.background = 'dark'
      vim.cmd.colorscheme 'nightfox'
    end,
  },
  light = {
    pkg = 'EdenEast/nightfox.nvim',
    init = function()
      vim.o.background = 'light'
      vim.cmd.colorscheme 'dawnfox'
    end,
  },
}
local selected = themes.light

return {
  {
    selected.pkg,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = selected.init,
  },
}
