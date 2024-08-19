local keymap = vim.keymap.set
local opts = {noremap = true, silent=true}

keymap("n", "<Space>", "", opts)

keymap({"n", "v"}, "<leader>t", '<cmd>echo "Hello World"<CR>')
keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>")
keymap({"n", "v"},"<C-b>", "<cmd>NvimTreeToggle<CR>")
keymap("n", "<C-s>", "<cmd>wall<CR>")
keymap("n", "<Leader>q", "<cmd>q<CR>")
keymap("n", "<Leader>p", "\"_dP")
keymap("i", "<C-c>", "<Esc>:")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "n", "nzzv")
keymap("n", "N", "Nzzv")
keymap("n", "<leader>y", "\"+y")
keymap("")
