local keymap = vim.keymap.set
local opts = {noremap = true, silent=true}

keymap("n", "<Space>", "", opts)

keymap({"n", "v"}, "<Leader>t", '<cmd>echo "Hello World"<CR>')
keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>")
keymap({"n", "v"},"<C-b>", "<cmd>NvimTreeToggle<CR>")
keymap("n", "<Leader>q", "<cmd>q<CR>")
keymap("n", "<Leader>p", "\"_dP")
keymap({"n", "i", "v"}, "<C-s>", "<cmd>wall<CR><Esc>")
keymap({"n", "i", "v"}, "<C-c>", "<cmd><CR><Esc>")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "n", "nzz")
keymap("n", "N", "Nzz")
keymap({"n", "v"}, "<Leader>y", "\"*y")
keymap("n", "<Leader>Y", "\"+Y")

