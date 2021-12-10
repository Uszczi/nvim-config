vim.g.mapleader = " "

local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd "autocmd BufWritePost plugins.lua PackerCompile"

require("plugins")            

require("nvim-mapper").setup({})
require("telescope").load_extension("project")
require("telescope").load_extension("harpoon")
require("rust-tools").setup({})
require("nvim_comment").setup()

vim.cmd 'colorscheme gruvbox-material'

-- TODO Create autogroup
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'
