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
