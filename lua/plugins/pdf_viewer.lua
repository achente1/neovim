return {
  {
    "gennaro-tedesco/nvim-jqx", -- Useful for viewing structured output
    ft = { "json", "yaml" },
  },
  {
    -- PDF opening and rendering via Snacks / system reader
    "folke/snacks.nvim",
    opts = {
      image = {
        enabled = true,
        doc = { float = true },
      },
    },
  },
}
