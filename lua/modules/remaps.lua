vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
-- Go to the start of the line
vim.keymap.set("n", "<leader>hh", '^')
-- Go to the end of the line
vim.keymap.set("n", "<leader>ll", '$')

vim.keymap.set("n", "<leader>fs", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

