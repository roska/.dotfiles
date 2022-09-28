--local actions = require "telescope.actions"

require("telescope").setup({
  defaults = {
    mappings = {
      -- Insert mode mappings
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key", -- Show help
        ["<C-j>"] = "move_selection_next", -- Down
        ["<C-k>"] = "move_selection_previous", -- Up
      }
    }
  }
})

-- Ctrl-p show files tracked by git repository
vim.keymap.set('n', '<c-p>', '<cmd>Telescope git_files<cr>')

-- Ctrl-p show all files
vim.keymap.set('n', '<leader>p', '<cmd>Telescope find_files<cr>')
