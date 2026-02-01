return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
  },
  {
    "akinsho/bufferline.nvim",
    opts = { options = {
      always_show_bufferline = true,
    } },
  },
  {
    "folke/trouble.nvim",
    opts = {
      follow = true,
    },
  },
}
