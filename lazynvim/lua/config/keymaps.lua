-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set

-- <esc>
map("i", "jk", "<Esc>", { silent = true })

-- <ctrl-s> to Save
map({ "n", "v", "i" }, "<C-S>", ":w<CR>", { silent = true, desc = "Save" })

-- Move Lines
map("v", "<S-k>", ":m '<-2<cr>gv=gv", { silent = true, desc = "Move up" })
map("v", "<S-j>", ":m '>+1<cr>gv=gv", { silent = true, desc = "Move down" })

-- delete buffer
map("v", "y", '"+y')
