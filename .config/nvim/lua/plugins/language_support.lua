return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "html-lsp",
      },
    },
  },
  -- This is necessary in order for rustaceanvim to work with LazyVim + mason. See https://github.com/mrcjkb/rustaceanvim/blob/master/doc/mason.txt
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
  },
  -- { import = "lazyvim.plugins.extras.lang.typescript" },
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "css",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "terraform",
        "hcl",
        "rust",
        "ron",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "java",
        "kotlin",
        "php",
      },
    },
  },
}
