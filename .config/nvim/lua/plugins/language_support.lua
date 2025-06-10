return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "html-lsp",
        "terraform-ls",
        "wgsl-analyzer",
        "nil",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        -- This is necessary in order for rustaceanvim to work with LazyVim + mason. See https://github.com/mrcjkb/rustaceanvim/blob/master/doc/mason.txt
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
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = { enable = false },
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
        "wgsl_bevy",
        "ron",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "java",
        "kotlin",
        "php",
        "slint",
        "nix",
      },
    },
  },
}
