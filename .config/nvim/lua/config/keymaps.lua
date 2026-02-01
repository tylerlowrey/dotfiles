-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

wk.add({
  { "<leader>r", group = "Rust options", icon = { icon = "", color = "orange" } },
})

vim.keymap.set("n", "<leader>rd", function()
  vim.cmd.RustLsp("openDocs")
end, { desc = "Open Rust Docs" })

vim.keymap.set("n", "<leader>re", function()
  local params = vim.lsp.util.make_position_params()
  local bufnr = vim.api.nvim_get_current_buf()

  vim.lsp.buf_request(bufnr, "rust-analyzer/expandMacro", params, function(err, result)
    if err then
      vim.notify("Error expanding macro: " .. tostring(err), vim.log.levels.ERROR)
      return
    end
    if not result or not result.expansion then
      vim.notify("No macro expansion found", vim.log.levels.WARN)
      return
    end
    vim.cmd("enew")

    local new_buf = vim.api.nvim_get_current_buf()
    vim.api.nvim_buf_set_name(new_buf, "Macro Expansion - " .. os.time() .. ".rs")
    vim.bo[new_buf].filetype = "rust"
    vim.bo[new_buf].buftype = "nofile"
    vim.bo[new_buf].buflisted = true
    vim.bo[new_buf].swapfile = false

    local lines = vim.split(result.expansion, "\n")
    vim.api.nvim_buf_set_lines(new_buf, 0, -1, false, lines)
  end)
end, { desc = "Expand macro at cursor" })

wk.add({
  { "<leader>o", group = "Other options", icon = { icon = "󰍻", color = "grey" } },
})
