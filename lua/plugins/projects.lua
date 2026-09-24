return {
  {
    "Pocco81/auto-save.nvim",
    opts = {
      enabled = true,
      execution_message = {
        message = function()
          return ""
        end,
      }, -- Silence "AutoSave: saved at..."
      trigger_events = { "FocusLost", "InsertLeave" }, -- Only save on focus lost or leaving insert mode
      condition = function(buf)
        local filetype = vim.bo[buf].filetype
        if filetype == "harpoon" or filetype == "gitcommit" or filetype == "neo-tree" then
          return false
        end
        return true
      end,
    },
  },
}
