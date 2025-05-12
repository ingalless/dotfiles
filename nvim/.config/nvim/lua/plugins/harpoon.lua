return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon.setup()
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd file to harpoon' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[E]dit the harpoon list' })

    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon power finger 1' })
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon power finger 2' })
    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon power finger 3' })
    vim.keymap.set('n', '<C-;>', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon power finger 4' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader><C-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<leader><C-N>', function()
      harpoon:list():next()
    end)
  end,
}
