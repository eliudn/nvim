local keymap = vim.keymap

keymap.set("n", "<leader>w","<cmd>write<CR>")
keymap.set("n", "<leader>q","<cmd>quit<CR>")
keymap.set("n", "<leader>nh",":hohl<CR>")

--keymap.set("n", "","")

keymap.set("i", "<C-h>","<left>")
keymap.set("i", "<C-j>","<down>")
keymap.set("i", "<C-k>","<up>")
keymap.set("i", "<C-l>","<right>")

--keymap.set("i", "<C-Tab>", "<C-j><CR>")
