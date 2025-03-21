-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", "tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Window management
keymap.set("n", "<leader>wh", ":split<Return>", { noremap = true, silent = true, desc = "Horizontal split" })
keymap.set("n", "<leader>wv", ":vsplit<Return>", { noremap = true, silent = true, desc = "Vertical split" })

-- Quick scrolling
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Shortcut to yank current line
keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank current" })

-- Remap Ctrl-C to have the same behavior as Esc
keymap.set("i", "<C-c>", "<Esc>")
