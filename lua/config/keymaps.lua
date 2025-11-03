-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--

vim.keymap.set("n", "<leader>fw", "<cmd> Telescope live_grep <CR>", { desc = "live grep" })
vim.keymap.set("n", "<leader>ud", "<cmd>lua Snacks.toggle.dim() <CR>", { desc = "toggle dim" })

vim.keymap.set("n", "<leader>cw", "<cmd>lua Snacks.picker.diagnostics() <CR>", { desc = "workspace diagnostics" })
vim.keymap.set("n", "<leader>gB", "<cmd>lua Snacks.picker.git_branches() <CR>", { desc = "git branches" })

vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })

vim.keymap.set("t", "<C-x>", [[<C-\><C-n>]])
