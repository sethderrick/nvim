return {
  "nvim-neo-tree/neo-tree.nvim",
  requires = {
    "nvim-lua/plenary.nvim",
    "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false, -- Show dotfiles
          hide_gitignored = false,
          hide_hidden = false, -- Show hidden files
        },
      },
    })
  end,
}
