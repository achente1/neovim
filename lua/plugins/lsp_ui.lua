return {
  -- Tame LSP diagnostics
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false, -- Turn off inline red error lines
        underline = true,
        update_in_insert = false, -- Do NOT calculate or display errors while typing
        severity_sort = true,
        float = {
          focused = false,
          style = "minimal",
          border = "rounded",
          source = "always",
        },
      },
    },
  },

  -- Stop blink.cmp from hijacking Enter key
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        list = {
          selection = {
            preselect = false, -- Prevents auto-selecting top item on Enter
            auto_insert = false,
          },
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500, -- Delay hover docs so they don't block code
        },
      },
    },
  },
}
