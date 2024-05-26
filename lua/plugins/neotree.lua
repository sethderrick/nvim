print("NeoTree configuration loaded")
require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false, -- Show dotfiles
      hide_gitignored = false,
      hide_hidden = false, -- Show hidden files
    },
  },
})
