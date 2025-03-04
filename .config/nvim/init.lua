require("config.lazy")
vim.opt.runtimepath:append("~/.config/nvim-rs")
require("nvim_rs")

vim.cmd([[colorscheme tokyonight-night]])
require("lspconfig").kotlin_language_server.setup({})
