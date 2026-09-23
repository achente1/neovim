return {
  {
    "Pocco81/auto-save.nvim",
    opts = {
      execution_message = {
        message = function()
          return ""
        end,
      }, -- Silent saves
    },
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = { options = { "buffers", "curdir", "tabpages", "winsize" } },
  },
}
