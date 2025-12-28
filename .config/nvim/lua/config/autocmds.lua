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
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.g.rust_recommended_style = false
    vim.opt_local.smartindent = false
    vim.opt_local.autoindent = false
  end,
})

-- force .tf files to always be terraform
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.tf",
  callback = function()
    vim.bo.filetype = "terraform"
  end,
})
