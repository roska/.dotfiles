--[[
  g? - toggle help 
--]]
require("nvim-tree").setup({
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key",
        ["<C-j>"] = "actions.move_selection_next",
        ["<C-k>"] = "actions.move_selection_previous",

      }
    }
  }
})

vim.keymap.set('n', '<leader>t', '<cmd>NvimTreeToggle<cr>')
