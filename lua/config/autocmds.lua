-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Force Neovim to recognize strikethrough escape codes
vim.cmd([[
  let &t_Ts = "\e[9m"
  let &t_Te = "\e[29m"
]])
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "DiagnosticDeprecated", { strikethrough = true })
    vim.api.nvim_set_hl(0, "@lsp.mod.deprecated", { strikethrough = true })
    vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { strikethrough = true, fg = "#808080" })
  end,
})
