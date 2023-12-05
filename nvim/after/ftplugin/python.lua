local handle = io.popen('git rev-parse --is-inside-work-tree')
-- reads command output.
local output = handle:read('*a')
-- replaces any nekline kith a space
local format = output:gsub('[\n\r]', ' ')
handle:close()
if(format=='true ')
then
 vim.keymap.set("n", "<leader>rn", ":w|TermExec cmd='source $(git rev-parse --show-toplevel)/venv/bin/activate && python %' direction=tab dir =% <cr>")
else
 vim.keymap.set("n", "<leader>rn", ":w|TermExec cmd='source ./venv/bin/activate && python %' direction=tab dir =% <cr>")
 end
vim.keymap.set("n", "<leader>rm", ":w|TermExec cmd='source ./venv/bin/activate && python %' direction=horizontal dir =% <cr>")
vim.keymap.set("n", "<C-x>", "0xj")
vim.keymap.set("n", "<C-c>", "0i#<esc>j")
vim.keymap.set("v", "<C-c>", ":norm 0i#<esc>j")
vim.keymap.set("v", "<C-x>", ":norm 0xj<cr>")
vim.keymap.set("i", "<C-c>", "<esc>0i#<esc>j")
vim.keymap.set("n", "<leader>rd", ":w|term source ./venv/bin/activate && pdb %<cr> direction=vertical size=40 dir=% >")

--vim.keymap.set("n", "<leader>rd", ":!pycharm . &<cr>")
--vim.keymap.set("n", "<leader>en", ":w|!python %<cr>")
