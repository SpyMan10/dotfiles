return {
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
  config = function()
    vim.cmd [[nnoremap \ :Neotree reveal<CR>]]    
    vim.keymap.set('n', '<leader>e', ':Neotree toggle position=left<CR>', { noremap = true, silent = true })
  end
}
