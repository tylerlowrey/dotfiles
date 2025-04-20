return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap["<Tab>"] = { "select_next", "fallback" }
      opts.keymap["<S-Tab>"] = { "select_prev", "fallback" }
    end,
  },
  {
    "tylerlowrey/oatmeal.nvim",
    cmd = { "Oatmeal" },
    keys = {
      { "<leader>om", desc = "Start Oatmeal session", mode = "n" },
    },
    opts = {
      config_file = "~/.config/secrets/oatmeal_config.toml",
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
    "kndndrj/nvim-dbee",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    build = function()
      require("dbee").install()
    end,
    config = function()
      require("dbee").setup({
        sources = {
          require("dbee.sources").FileSource:new(vim.fn.expand("~/.config/secrets/connections.json")),
        },
      })
    end,
  },
}
