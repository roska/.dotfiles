-- NeoVIM init.lua

require('plugins')
require('nvim-tree-config')
require('telescope-config')
require('lualine-config')


-- Packer setup
--[[
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')

  vim.cmd('packadd packer.nvim')
  install_plugins = true
end
]]--
-- Telescope setup TODO: put setup to separate file
-- https://github.com/nvim-telescope/telescope.nvim#telescope-setup-structure


-- Basic vim options
-- vim.o = general settings
-- vim.wo = window-scoped settings
-- vim.bo = buffer-scoped settings
-- vim.g = global variables
vim.cmd "colorscheme tokyonight" -- Set colorscheme

-- Linenumbers
vim.opt.number = true -- Show linenumbers
vim.opt.relativenumber = true -- Show relative linenumbers

vim.opt.cursorline = true


-- Tabs & spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.showcmd = true


-- Keybindings
-- vim.keymaps.set('mode', 'key', 'action', 'options')

-- Map leader to space
vim.g.mapleader = ' '

-- Quick escape INSERT mode
vim.keymap.set('i', 'jj', '<esc>') 

-- Write to file
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>') 

-- Quit vim
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>')


vim.keymap.set('n', '<leader>t', '<cmd>NvimTreeToggle<cr>')

-- vim.keymap.set('n', '<leader>p', '<cmd>Telescope find_files<cr>')


vim.keymap.set('n', '<leader>p', '<cmd>Telescope find_files<cr>')
