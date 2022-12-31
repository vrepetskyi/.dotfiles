vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.clipboard = "unnamedplus"

packer = require('packer')

packer.startup(function(use)
  use "wbthomason/packer.nvim"

  use {
    "windwp/nvim-autopairs",
    config = function()
      autopairs = require("nvim-autopairs")
      autopairs.setup{}
      autopairs.enable()
    end
  }

  use {
    "nvim-tree/nvim-tree.lua",
    config = function() require("nvim-tree").setup {} end
  }
end)
