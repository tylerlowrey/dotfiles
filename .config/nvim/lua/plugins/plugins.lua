return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap["<Tab>"] = { "select_next", "fallback" }
      opts.keymap["<S-Tab>"] = { "select_prev", "fallback" }
    end,
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
}
