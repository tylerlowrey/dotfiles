-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "typescript" },
  callback = function(ev)
    vim.lsp.start({
      name = "typescriptls",
      cmd = { "typescript-language-server", "--stdio" },
      root_dir = vim.fs.root(ev.buf, { "package.json", "tsconfig.json" }),
    })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "terraform" },
  callback = function(ev)
    vim.lsp.start({
      name = "terraform-ls",
      cmd = { "terraform-ls", "serve" },
      root_dir = vim.fs.root(ev.buf, { "main.tf" }),
    })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.cmd("TSDisable indent")
  end,
})
