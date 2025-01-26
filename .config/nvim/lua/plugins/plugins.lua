return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap["<Tab>"] = { "select_next", "fallback" }
      opts.keymap["<S-Tab>"] = { "select_prev", "fallback" }
    end,
  },
}
