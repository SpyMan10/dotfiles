return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'moll/vim-bbye',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('bufferline').setup {
      options = {
        -- set to "tabs" to only show tabpages instead
        mode = 'buffers',
       
        offsets = {
          {
            filetype = "neo-tree",
            text = "Nvim Tree",
            separator = true,
            text_align = "left",
          },
        },

        -- allows highlight groups to be overriden i.e. sets highlights as default
        themable = true,

        -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        numbers = 'none',

        -- can be a string | function, see "Mouse actions"
        close_command = 'Bdelete! %d',
        buffer_close_icon = '✗',
        close_icon = '✗',

        -- Show only the file name without the directory
        path_components = 1,
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 30,
        -- prefix used when a buffer is de-duplicated
        max_prefix_length = 30,
        tab_size = 21,
        diagnostics = false,
        diagnostics_update_in_insert = false,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,

        -- whether or not custom sorted buffers should persist
        persist_buffer_sort = true,

        -- | "thick" | "thin" | { 'any', 'any' },
        separator_style = { '│', '│' },
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        show_tab_indicators = false,
        indicator = {
          -- this should be omitted if indicator style is not 'icon'
          -- icon = '▎',
          -- Options: 'icon', 'underline', 'none'
          style = 'none', 
        },
        icon_pinned = '󰐃',
        minimum_padding = 1,
        maximum_padding = 5,
        maximum_length = 15,
        sort_by = 'insert_at_end',
      },
      highlights = {
        separator = {
          fg = '#434C5E',
        },
        buffer_selected = {
          bold = true,
          italic = false,
        },
        -- separator_selected = {},
        -- tab_selected = {},
        -- background = {},
        -- indicator_selected = {},
        -- fill = {},
      },
    }
  end,
}
