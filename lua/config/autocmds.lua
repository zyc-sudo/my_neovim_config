-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Autocmds are automatically loaded on the VeryLazy event
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- file based indentation
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local function set_formatting(opts)
  vim.opt_local.tabstop = opts.tabstop
  vim.opt_local.softtabstop = opts.softtabstop
  vim.opt_local.shiftwidth = opts.shiftwidth
  vim.opt_local.expandtab = opts.expandtab or true
  vim.opt_local.autoindent = true
  vim.opt_local.fileformat = "unix"
  if opts.textwidth then
    vim.opt_local.textwidth = opts.textwidth
  end
end

-- Python & Lua: 4 spaces
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.py" },
  callback = function()
    set_formatting({ tabstop = 4, softtabstop = 4, shiftwidth = 4, textwidth = 200 })
  end,
})

-- Web files: 2 spaces
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.js", "*.html", "*.css", "*.yaml", "*.yml", "*.json", "*.ts", "*.tsx", "*.lua" },
  callback = function()
    set_formatting({ tabstop = 2, softtabstop = 2, shiftwidth = 2 })
  end,
})
