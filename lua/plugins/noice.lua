return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      view = "cmdline", -- Bottom bar prompt instead of center floating popup
    },
    presets = {
      bottom_search = true, -- Traditional bottom '/' search
      command_palette = false, -- Disable top centered command palette
      long_message_to_split = true, -- Send long outputs to a split window
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          any = {
            { find = "%d+L, %d+B" }, -- Filter "written" messages
            { find = "; after #%d+" }, -- Filter undo messages
            { find = "; before #%d+" },
          },
        },
        opts = { skip = true },
      },
    },
  },
}
