return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      always_show_bufferline = false, -- Hides the tab line if only 1 file is open
      diagnostics = false, -- Remove LSP red/yellow badges cluttering tab titles
      show_buffer_close_icons = false,
      show_close_icon = false,
      max_name_length = 18,
      tab_size = 18,
    },
  },
}
