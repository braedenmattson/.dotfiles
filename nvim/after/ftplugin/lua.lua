vim.keymap.set("n", "<leader>rn", ":w|TermExec cmd='lua %' direction=tab dir=% <cr>")
vim.keymap.set("n", "<leader>rm", ":w|TermExec cmd='lua %' direction=horizontal dir=% <cr>")
vim.keymap.set("n", "<C-c>", "0i--<esc>j")
vim.keymap.set("v", "<C-c>", ":norm 0i--<esc>j")
vim.keymap.set("n", "<C-x>", "0xxj")
vim.keymap.set("v", "<C-x>", ":norm 0xxj<cr>")
vim.keymap.set("i", "<C-c>", "<esc>0i--<esc>jw")
--vim.keymap.set("n", "<leader>en", ":w|!cargo run %<cr>")

