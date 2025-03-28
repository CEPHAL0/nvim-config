-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll Down" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down" })
map({ "n", "v", "i" }, "<C-b>", "<C-w>h", { desc = "Move Buffer Left" })
map("n", "<leader>x", function()
    Snacks.bufdelete()
end, { desc = "Delete Buffer" })
