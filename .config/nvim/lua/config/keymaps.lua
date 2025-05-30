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

wk.add({
  { "<leader>o", group = "Other options", icon = { icon = "󰍻", color = "grey" } },
})
