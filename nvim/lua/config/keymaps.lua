-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


-- Comentar/descomentar línea en modo normal (Ctrl + /)
map("n", "<C-/>", "<cmd>lua require('Comment').toggle()<CR>", { desc = "Comentar/descomentar línea en modo normal" })

-- Comentar/descomentar en modo insertar (Ctrl + /)
map("i", "<C-/>", "<cmd>lua require('Comment').toggle()<CR>", { desc = "Comentar/descomentar línea en modo insertar" })

-- Comentar/descomentar en modo visual (Ctrl + /)
map("v", "<C-/>", "<cmd>lua require('Comment').toggle()<CR>", { desc = "Comentar/descomentar línea en modo visual" })

