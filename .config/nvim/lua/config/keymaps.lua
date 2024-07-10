-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap

map.del("t", "<C-h>", { desc = "Go to Left Window" })
map.del("t", "<C-j>", { desc = "Go to Lower Window" })
map.del("t", "<C-k>", { desc = "Go to Upper Window" })
map.del("t", "<C-l>", { desc = "Go to Right Window" })
