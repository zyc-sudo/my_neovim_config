-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd("set nu")
vim.cmd("set hlsearch")
vim.cmd("set is")
vim.cmd("set backspace=2")
vim.cmd("set ruler")
vim.cmd("set showmode")
vim.cmd("set foldmethod=indent")
vim.cmd("set foldlevel=99")
vim.cmd("set signcolumn=auto:2")
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"
