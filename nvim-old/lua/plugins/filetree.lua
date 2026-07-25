return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      -- optional, but recommended
      "nvim-tree/nvim-web-devicons",
    },
    -- neo-tree will lazily load itself
    lazy = false,
  }
}
