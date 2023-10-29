


vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>rn", ":w|term cargo run %<cr>")
vim.keymap.set("n", "<leader>rb", ":ToggleTerm direction=horizontal dir=% <cr>")
vim.keymap.set("n", "<leader>rj", ":ToggleTerm dir=% direction=tab<cr>")
vim.keymap.set("n", "<leader>rk", ":ToggleTerm direction=vertical size=40 dir=% <cr>")
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-f>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-o>', [[<C-\><C-n><C-o>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)

vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>l",":wq<cr>")
vim.keymap.set("n", "<leader>q",":q!<cr>" )
vim.keymap.set("n", "<leader>t","::NvimTreeToggle<cr>" )
vim.keymap.set("n", "<C-b>",":bp<cr>" )
vim.keymap.set("n", "<C-o>",":bd!<cr>" )
vim.keymap.set("n", "<C-n>",":bn<cr>" )
vim.keymap.set("n", "<C-s>", ":w<cr>")
vim.keymap.set("n", "<leader>=", ":!alacritty &<cr>")
vim.keymap.set("n", "<leader><enter>", "o<Esc>k")
vim.keymap.set("n", "<leader>o", "O<Esc>j")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-q>", "`Q")
vim.keymap.set("n", "<C-w>", "`W")
vim.keymap.set("n", "<C-e>", "`E")
vim.keymap.set("n", "<C-r>", "`R")
vim.keymap.set("n", "mq", "mQ")
vim.keymap.set("n", "mw", "mW")
vim.keymap.set("n", "me", "mE")
vim.keymap.set("n", "mr", "mR")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>m", ":marks QWER<cr>")

vim.keymap.set("n", "<c-d>", "2<c-e>")
vim.keymap.set("n", "<C-u>", "2<C-y>")
vim.keymap.set("v", "<c-d>", "2<c-e>")
vim.keymap.set("v", "<C-u>", "2<C-y>")

vim.keymap.set("n", "<C-j>", "10jzz")
vim.keymap.set("n", "<C-k>", "10kzz")
vim.keymap.set("v", "<C-j>", "<C-d>")
vim.keymap.set("v", "<C-k>", "<C-u>")

vim.keymap.set("n", "<C-i>", "{zz")
vim.keymap.set("n", "<C-p>", "}zz")
vim.keymap.set("n", "<C-h>","<C-o>")
vim.keymap.set("n", "<C-l>","<C-i>")
vim.keymap.set("v", "<C-i>", "{zz")
vim.keymap.set("v", "<C-p>", "}zz")
vim.keymap.set("v", "<C-h>","<C-o>")
vim.keymap.set("v", "<C-l>","<C-i>")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-f>", "<Esc>")
vim.keymap.set("n", "<C-f>", "<Esc>")
vim.keymap.set("c", "<C-f>", "<Esc>")
vim.keymap.set("v", "<C-f>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>s", ":s//g<Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })



