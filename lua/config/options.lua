-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.scrolloff = 4 -- Keep 4 lines of context visible
vim.g.lazyvim_python_lsp = "basedpyright"

-- Prevent Zellij from treating Pmenu cells as transparent
vim.opt.pumblend = 0

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1f2335", fg = "#c0caf5" })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#292e42", fg = "#ffffff", bold = true })
  end,
})

-- to remove trailing whitespace characters from the listchars option
vim.opt.listchars:remove("trail")
