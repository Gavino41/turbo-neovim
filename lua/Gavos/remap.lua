vim.g.mapleader = " " 

local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex) 
keymap.set("i", "jk", "<esc>", {desc = "exit I mode with jk"} )
keymap.set("n", "<leader>sw", ":%s@", {desc  = "search word and replace"})
keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "get rid of search highlights"})
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "split window vertical"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "split window horizontal"})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "splits equal size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "split vertical"})
keymap.set("n", "<leader>w", "<C-w>w", {desc = "change windows"})
