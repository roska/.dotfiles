--[[
  g? - toggle help 
--]]
require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    relativenumber = false,
  },
  renderer = {
    add_trailing = true,
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    }
  }
})

vim.keymap.set('n', '<leader>t', '<cmd>NvimTreeToggle<cr>')
