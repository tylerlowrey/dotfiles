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
