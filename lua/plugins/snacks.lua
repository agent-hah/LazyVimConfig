return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true, -- Show dotfiles in the explorer tree
            ignored = true, -- Optional: Show gitignored files in the tree
          },
          files = {
            hidden = true, -- Show dotfiles when searching with <leader>ff
            ignored = true, -- Optional: Show gitignored files in search
          },
        },
      },
    },
  },
}
