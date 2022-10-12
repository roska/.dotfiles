-- NeoVIM init.lua

require('plugins')
require('nvim-tree-config')
require('telescope-config')
require('lualine-config')
require('bufferline-config')



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
vim.cmd "colorscheme rose-pine" -- Set colorscheme

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

--- asdfasdf
vim.opt.termguicolors = true


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

-- Telescope mappings
vim.keymap.set('n', '<leader>p', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<c-p>', '<cmd>Telescope git_files<cr>')


-- Bufferline mappings
vim.keymap.set('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<cr>')
vim.keymap.set('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<cr>')
vim.keymap.set('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<cr>')
vim.keymap.set('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<cr>')
vim.keymap.set('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<cr>')
vim.keymap.set('n', '<leader>6', '<cmd>BufferLineGoToBuffer 6<cr>')
vim.keymap.set('n', '<leader>7', '<cmd>BufferLineGoToBuffer 7<cr>')
vim.keymap.set('n', '<leader>8', '<cmd>BufferLineGoToBuffer 8<cr>')
vim.keymap.set('n', '<leader>9', '<cmd>BufferLineGoToBuffer 9<cr>')
